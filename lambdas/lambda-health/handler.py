import json
from datetime import datetime

def lambda_handler(event, context):
    current_time = datetime.now().isoformat()
    return {
        'statusCode': 200,
        'body': json.dumps({
            'status': 'passed',
            'timestamp': current_time
        })
    }
