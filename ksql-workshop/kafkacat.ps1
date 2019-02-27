docker run --network ksql-workshop_default `
          --tty --interactive --rm `
          confluentinc/cp-kafkacat `
          kafkacat -b kafka:29092 -C -K: `
          -f "\nKey (%K bytes): %k\t\nValue (%S bytes): %s\n\Partition: %p\tOffset: %o\n--\n" `
          -t ratings
          
          
