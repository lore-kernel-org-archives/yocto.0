Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7093.1608124121822555633
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:08:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=m/2ACJs0;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690070.outbound.protection.outlook.com [40.107.69.70])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6310238C063A
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:08:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HmyNA4sKj5NqyZPz7Zxl6G2rvhmMNWGgpJLQbgwVISzhQ6d6PYxhQtisMEDRrh36R0jXkGVfL8awm0+onV4ncIIDeU/G178nvKaPRqWMwZE7cDI8IPS3KgDKrxeiW9QHRsklCfCouvG4/oUV/lCWN376XZOpkTAqE/rG2KfIfdI+mCCETErbBatkpftJx86a7sd+O2kiacR9y8TQ6xZrKxJBmM9Ye02aZwbbDfhaOCmwHVhcx6nP9MUzikHAnvQb/6gAiSWvE+/LhArajFWCJaoShSibnxfaTYtrhsI+/5ESvOZjQJN0RV6fedDzgdvS1GC2/+TreWVpaijPmW0C9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zBE+coOc28SCc9gX7S7uDUH0q5FjJPZdb3PBlEglMx8=;
 b=FkB8uC6968ElaQptqLuCl3X8W+h1CrNxNb6pov2QE7dB/bAZa7rnLxa2wBGrT9HhvBTa08ycqN/lkhj4jC15+8R0CJYJqVn7KXlLLg0SAI7laN7ve3jfMu/2UgpJaCDRT85CRRHjyxQeUOPf2DGBypkPoivf/ITmNC6t7+FjmJzKng6dTQMYoZzdVLTnyTRFAxMPyi1bA57SW3f23/nhVgioN3vCFaIxU4U63vlCICRaEXZShcfuZrMU3rk9WQ9ShrTB5niy9niCjRwnFfTVHHO+ORuFwwZMG+a5ezZXHGHqMnQiY1NqE/VhPMS9YUNgL+zK0SweYNa/TVBeyD9G/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zBE+coOc28SCc9gX7S7uDUH0q5FjJPZdb3PBlEglMx8=;
 b=m/2ACJs0dxvBoLJs6Q1zgTEIZX3YaTW506X+kKyLNmBaJkK9kGETEuIzJLlAX4v/a7Wg7WOzWbowZ5+e+oZtcSWHRYeXUI7J4eI0xSA5W5pDgXFwsYlDmdP1OZkGAxyY25E7fztCu9zSUKAC1S7bnuY17mwqu+6s1uLGOe1kOzI=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:08:38 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:08:38 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: Review request 0/25:[meta-tensorflow] upgrade tensorflow 1.13.1 -> 2.4.0.rc4
Date: Wed, 16 Dec 2020 21:07:57 +0800
Message-Id: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:08:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd7c6068-ee9d-4283-729a-08d8a1c3b422
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4577A2EF500A0258AE05580094C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tgyz8vz1lvOn4tEp8RKwSBLOBaT4q4e5mZjxJZPjVu47TIaACY8Oh24kPqz8Sb9x0CLsUtbgNZWSck7t0HGHcfdHv6dz7a+TkqlB4L9HIVoMs1/PX9s+WyAhVigvuH8veXBiseUnrd0FswpiymmQiO5mQTAmWMQR0hGic/3I7UmYEogrBXnIxeTrmfN+N70GcvupGW+stYOIb75c/TJMMDZBhQTuZPVl8hLhsNy58bJovzrW9hBY1mUFtDbK5K9xhRs9ciRo0rAowqfTtWb3KfFq5hVaDbEzJ7TuAyw4QKgfm5xuxJ/HODEq7zItr4H9w4EFRGYGUhHADzF8XVpqBoj2lcCIveal5cseaqRhGBysYL5pBa9ZfojgvoqrpHLN+ab6d0Xk6j9TvuWP/mW1Zg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(4001150100001)(316002)(66556008)(8936002)(8676002)(966005)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?G4fNd69dnL5orM7S80JNpUodqB+/cLnHo8ad/lNCDjqX3RyERYumhc7yaMm9?=
 =?us-ascii?Q?E683TnD9Tbd+jxmnWJjf4LRMI4T7ESj9WWB5U0+Py6vmLhcHxDR7r7rR3/3I?=
 =?us-ascii?Q?RMfU4rJVr6bFQv3vmRS8COrXYolBBkS6ui2XWILJkcxWELCFufD5RQ5IKvrp?=
 =?us-ascii?Q?zWQ8CNXE4PWN1tEywlXU4gCh0CfaLvFZ8QXs/5mHZ+OXmr1RHvbRxZ8fNUeN?=
 =?us-ascii?Q?7wQsBwlra/fkj5iKQMYkVdGAjOTJYDf6AUkzv2XVBiGmxAuDQyoqEEUQcwng?=
 =?us-ascii?Q?q+cQVctGfELHVNkaU8YpCaaykiIJuugZEei643wWzpwLn4SlYmGkE9FV5qME?=
 =?us-ascii?Q?gkIqCAJRJczLjTP5ZGhQ8D1krj5FPZcEv6Uclg+m1UeXkss8DQH5yWMnG1iT?=
 =?us-ascii?Q?H6WhXLmGvyfqFmLyBMRyCHPOO0qImuuC8gq7/ilmHyHJCMg4ghazaBYB+mNX?=
 =?us-ascii?Q?Lz/yUuLLNn7y6sTe1okE76zJhpE1wWSwmCakwYx1rgTqnxvDW0jgu1cT7rbi?=
 =?us-ascii?Q?pNIhxdHIJr6ulKmSV+J3d0SIQfV//8Kzv0d1C9uDb8tNZtzlsZUppjkRiOnG?=
 =?us-ascii?Q?OHfv19b+4lvT4+I3BOMva5WrcFmE04pqeO1yLuMyGqelst0vBcCqU5VuFW63?=
 =?us-ascii?Q?YtODPlZD8BH3EQbd3ZqX4ummLv470y8cpjFJJ50kqnPoXDpBV74xCTFk9C8u?=
 =?us-ascii?Q?D7GxnccUIwKYbVROZy23eNy2WkboqBp68qi8W0o1+fvRVBQTL4gcShua+A1A?=
 =?us-ascii?Q?D0VhF/XUKQTLeaDvvmvTRN2amctIjzS/PssQHihE9eTqCP+X1ICbJZ5ieIhi?=
 =?us-ascii?Q?eTdGe+CareGl+UihWHrXnhXLpqKC88YNrht5QkFgnOQO+/Yb7LjTv8Ic2YMV?=
 =?us-ascii?Q?SZcjU/azjNMgjLSfh8EjDzmUFsV0uRTfA7ZOfsrbA/UHl4u2lQuGSwyKTkYM?=
 =?us-ascii?Q?9DdzCmL0IBs3NVZa7qCHTHU49R41EfhUsaltrNptNASrnSlIq5oU+oDJRST9?=
 =?us-ascii?Q?/5+K?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:08:38.5296
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: bd7c6068-ee9d-4283-729a-08d8a1c3b422
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8dagRwiQUtdI9k4KB8mBkdQLtEDDHbR984bfYwwooG5IW5/gopfJHCAzlZblsYb2xvFjEC4C7TpY8OZn6zk0N3hmfCNotLpZJZ+T1B6Hy8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

# Build and Run
## 1. Clone away
```
$ mkdir <ts-project>
$ cd <ts-project>
$ git clone git://git.yoctoproject.org/meta-tensorflow
$ git clone git://git.openembedded.org/meta-openembedded
$ git clone git://git.openembedded.org/openembedded-core oe-core
$ cd oe-core
$ git clone git://git.openembedded.org/bitbake
```

## 2. Prepare build
```
$ . <ts-project>/oe-core/oe-init-build-env <build>

# Build qemux86-64 which runqemu supports kvm.
$ echo 'MACHINE = "qemux86-64"' >> conf/local.conf

$ echo 'IMAGE_INSTALL_append = " tensorflow"' >> conf/local.conf

Edit conf/bblayers.conf to include other layers
BBLAYERS ?= " \ 
    <ts-project>/oe-core/meta \
    <ts-project>/meta-openembedded/meta-python \
    <ts-project>/meta-openembedded/meta-oe \
    <ts-project>/meta-tensorflow \
"
```
## 3. Build image                                                                                                                      
```                                                                                                                                    
cd <build>                                                                                                                             
$ bitbake core-image-minimal                                                                                                           
```

## 4. Start qemu with slrip + kvm + 5GB memory:
```
$ runqemu qemux86-64 core-image-minimal slirp kvm qemuparams="-m 5120"
```

## 5. Verify the install
```
root@qemux86-64:~# python3 -c "import tensorflow as tf;print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
tf.Tensor(-3304.6208, shape=(), dtype=float32)

## 6. Run tutorial case
### Refer: https://www.tensorflow.org/tutorials
```
root@qemux86-64:~# cat >code-v2.py <<ENDOF
import tensorflow as tf
mnist = tf.keras.datasets.mnist

(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train, x_test = x_train / 255.0, x_test / 255.0

model = tf.keras.models.Sequential([
  tf.keras.layers.Flatten(input_shape=(28, 28)),
  tf.keras.layers.Dense(128, activation='relu'),
  tf.keras.layers.Dropout(0.2),
  tf.keras.layers.Dense(10)
])

predictions = model(x_train[:1]).numpy()
tf.nn.softmax(predictions).numpy()
loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)
loss_fn(y_train[:1], predictions).numpy()

model.compile(optimizer='adam',
              loss=loss_fn,
              metrics=['accuracy'])
model.fit(x_train, y_train, epochs=5)
model.evaluate(x_test,  y_test, verbose=2)

probability_model = tf.keras.Sequential([
  model,
  tf.keras.layers.Softmax()
])
probability_model(x_test[:5])

ENDOF

root@qemux86-64:~# python3 ./code-v2.py
2020-12-15 08:16:44.171593: I tensorflow/compiler/mlir/mlir_graph_optimization_pass.cc:116] None of the MLIR optimization passes are enabled (registered 2)
2020-12-15 08:16:44.184464: I tensorflow/core/platform/profile_utils/cpu_utils.cc:112] CPU Frequency: 3099995000 Hz
Epoch 1/5
1875/1875 [==============================] - 14s 7ms/step - loss: 0.4833 - accuracy: 0.8595
Epoch 2/5
1875/1875 [==============================] - 13s 7ms/step - loss: 0.1549 - accuracy: 0.9558
Epoch 3/5
1875/1875 [==============================] - 13s 7ms/step - loss: 0.1135 - accuracy: 0.9651
Epoch 4/5
1875/1875 [==============================] - 13s 7ms/step - loss: 0.0889 - accuracy: 0.9729
Epoch 5/5
1875/1875 [==============================] - 13s 7ms/step - loss: 0.0741 - accuracy: 0.9777
313/313 - 1s - loss: 0.0757 - accuracy: 0.9757
```
## 7. TensorFlow/TensorFlow Lite C++ Image Recognition Demo                                                                            
```                                                                                                                                    
root@qemux86-64:~# time label_image                                                                                                    
2020-12-15 08:18:34.853885: I tensorflow/core/platform/profile_utils/cpu_utils.cc:112] CPU Frequency: 3099995000 Hz                    
2020-12-15 08:18:41.565167: I tensorflow/examples/label_image/main.cc:252] military uniform (653): 0.834306                            
2020-12-15 08:18:41.567874: I tensorflow/examples/label_image/main.cc:252] mortarboard (668): 0.0218696                                
2020-12-15 08:18:41.568936: I tensorflow/examples/label_image/main.cc:252] academic gown (401): 0.0103581                              
2020-12-15 08:18:41.569985: I tensorflow/examples/label_image/main.cc:252] pickelhaube (716): 0.00800819                               
2020-12-15 08:18:41.571025: I tensorflow/examples/label_image/main.cc:252] bulletproof vest (466): 0.00535086                          
                                                                                                                                       
real    0m7.178s                                                                                                                       
user    0m6.101s                                                                                                                       
sys 0m0.893s                                                                                                                           
                                                                                                                                       
root@qemux86-64:~# time label_image.lite                                                                                               
INFO: Loaded model /usr/share/label_image/mobilenet_v1_1.0_224_quant.tflite                                                            
INFO: resolved reporter
INFO: invoked
INFO: average time: 213.584 ms
INFO: 0.780392: 653 military uniform
INFO: 0.105882: 907 Windsor tie
INFO: 0.0156863: 458 bow tie
INFO: 0.0117647: 466 bulletproof vest
INFO: 0.00784314: 835 suit

real    0m0.233s
user    0m0.216s
sys 0m0.012s
