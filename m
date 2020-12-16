Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7080.1608124179128914336
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=TnLPE4Hg;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2044.outbound.protection.outlook.com [40.107.93.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id EABBC38C063A
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwylUmy4n/I1Fmc1f81J0cBU0VeGDU5kJCeJ52o8li3UOyEnHIht6xGvknlMl6fHgmra4QH8p114boSBum1gv5zdpTLzI6Yl9yZQchxdSgMVPHk1jfH4ApdAx53g+/TPZiPK/obpBTzyNYS02vkq0OCMkVKSn1PejoeJSxdl8ckbkzsvIC8KhZgJvN3+1rUHMfv4ipEk9RimrapGL6APh+fgR6A+kccvb0i+h8/gj4z/CCUjeTZPCJIlsCJ2F6+HGrDVQryFfZ/Nj+/GJXKeudo49V/lr8QDIKPH3vgiEtSslG50foRilPW9+YgKzRvMawZAV7IU2XGVmJn8af4YKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aNK1dcc/LsFLWpZ8vAlPEA/D2N61NCMU20HhN2u3PAA=;
 b=Xo9smas2mz7zbyzHHZqjnCKpBqYal/ylmL5Dg2nywvZB8CKm5R+l6j6OX4TpJVRz2fMzz6MUguy6znu7AmM2bdnL0CbA+dpxv+nJQOvzGBJr4WaAuu8O5soU6/aWtvvxdTqd6jZ/dH6M0B1ARLFlVyhA82TlTerr8/Xu24A6Waj4u2t4IWGQPnfB53TerwptFqtXeHEaGVuyE8YuC1ZRXfhDesBO2a1C3Hisxc46nbXhkLqktAI0EtyMaNs9DwXTHZzJIllqicKPlsBZHS+kyZ4d/JMmdTrgIK+rmaKHm0N1sN1+RrKu7xXyFQFh0DJsAU1vbKdtk8HaUtqmy45RsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aNK1dcc/LsFLWpZ8vAlPEA/D2N61NCMU20HhN2u3PAA=;
 b=TnLPE4Hg+JGJHAQ8ib8FK+nrdcxwGmCGVry0lLwi3Z6hKDvj9UI66gDm6bAnDxA3rWEsxl0FLDCOHC07IKOFLz+R9p9hb53fFoyQ/HVbjAVLMcE+aejlt2XxepULSOKzQXyVfKUu9MBaSv+EXBNYKVy+ZdvFsX8/PPAKBgcZnEU=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:37 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:37 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 23/25] BUILD.md: update quick start for tensorflow 2
Date: Wed, 16 Dec 2020 21:08:20 +0800
Message-Id: <20201216130822.28476-24-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 68891af5-11ec-4b23-301c-08d8a1c3d77c
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4577D7EF4562CD2E803BF1CA94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	foL8iOCZbPqD3aUs+kifZDlftzPwXsGqoDiwFJfazuvBIlzuoqKjXmRWtO5Ykz8lJXqaToXQJ3E11IdFuO1d6o2xh7jcR4ufIOp90bCecRj2VH3A+baPvAwU1SV3kweoeDPZhqVz0uSG2CrvAlvYEHhuHcoPxbEuR1o8J7aX0YRly6b2jnTh+92RMbgDPaq2HYP4a64WLWFEgHWVpEGB/RdTpWNl1IuGUrerz1Y3yxVBH07QAIHEb+NM4/nWpviHy4wr7ucPseqggFLPQLJPGluGvV4wMN5SXXif1EfWPZM1tsSOW5P6r8VCYQEoaqs+FhOLL2EOLCamJeDmszTMV+vEyjC9UQ+r5T7rr55mxvhH+S7QciEZIZixvC1ocvlzfvFrNdrZEo4nFXnqLO3ttQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(4001150100001)(15650500001)(316002)(66556008)(8936002)(8676002)(966005)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?bH66+IX7wCytBlRtjfSf1rZY/6ObczHKOqRNIAboRrYFi2J4mh6PADG/aIEE?=
 =?us-ascii?Q?QOd6UFZtLBELk1Z8NmHRFfc0aSh6oumN8/LrT74p/HvMXcKLRbhJg+MzuvD0?=
 =?us-ascii?Q?VMX/BaavYgs6o4KxlUa+ZqGoh4iCQpk17AIIIy4cJfo1JjPZ/7q+CLrv7nfs?=
 =?us-ascii?Q?KzU8daPXXcZfcw+Mv0sEA40ZJR2fioNd/VxEe5ITxw/dZMoQRZR5T9xrfZV6?=
 =?us-ascii?Q?Lfgs8+1COUXcPv6KmqF0ZSKN3uRNfY5gX3feM9ePDZaOI0oF42KzDxkb+eJd?=
 =?us-ascii?Q?E9vU6/2P9sQPDM4BuvblTvx8XEczw2nbAXcLXf18iRdRqye1hO9mdAae4Ac2?=
 =?us-ascii?Q?0jBZTeAd4LL7R6kG9NWmbMr+H5CEZ+pzKPEgqvM45xUWBnYLWcYGO+LY6Pgr?=
 =?us-ascii?Q?Ltx+0G11bT9etwpPWH4ZZGSgEwkJMkbzVCv6XFw6YnAPA/Ae36eYqv1JXd4F?=
 =?us-ascii?Q?ybYxQW+DxzUaPWtY4MOx/Pgtwo3zXfbf5+yKeiJG4ietIYLesp6yprUzqbj1?=
 =?us-ascii?Q?e6XbH9P3ortBKiiaPXaEIqp2shzIhlMKMdJXD4JrrWpdNjYH1wYNG0lMlNcu?=
 =?us-ascii?Q?V+N8PWcW7g3fmG1JRrBxP6Gc8WPl2QLMGVYXG9Ad804VryuZuJ87Pfs9Jr5i?=
 =?us-ascii?Q?laJO5geS49MFTuaTj3C1eSDBGJZjE5i+BjgASiQR1lRxpAMqw7DF4bg0mLn6?=
 =?us-ascii?Q?jmOfOHOY1Ps3rLIqN2Iy5KqoXIcjr9o5mBH0jXONOSMzAYfajkB9fFcWFCsp?=
 =?us-ascii?Q?5BmKHWuR8MkyiVXaZ0swMuPcwnL5j3Gs/A0QAr9xEYVkTKkj8RYYMNZTJj17?=
 =?us-ascii?Q?Af+DQ6hiWqfKSvZvwJmBFuBozzFbC7oqI5dddCV0D0JyVe2zlnBwIwwFwHm8?=
 =?us-ascii?Q?uWCZI6LOWKP4ltLdyIPXtvVEECMnsFBMZdtGxQPy94xaiPTj7mEKOzWPKbvk?=
 =?us-ascii?Q?wGK3InK0AznQyKZk3ooP9KkglzjKGgEPlRNttXJIZthKigeNy73ImArRc2u/?=
 =?us-ascii?Q?226e?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:37.7840
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 68891af5-11ec-4b23-301c-08d8a1c3d77c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +kfWae0Xb6oEoAY4fkR9O4SJbDNaHOp2cYBs6gYQK692fS7JhavWGt2KvAF+FWUE5Mh9AKk9kEc8x117a48ddUROTncXc34vgdtJb+aFsHM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Refers begginers of upstream [1] [2]
[1] https://www.tensorflow.org/install/pip
[2] https://www.tensorflow.org/tutorials/quickstart/beginner

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 BUILD.md | 97 ++++++++++++++++++++++++++++++++------------------------
 1 file changed, 55 insertions(+), 42 deletions(-)

diff --git a/BUILD.md b/BUILD.md
index da5a148..bd0f44a 100644
--- a/BUILD.md
+++ b/BUILD.md
@@ -41,75 +41,88 @@ $ runqemu qemux86-64 core-image-minimal slirp kvm qemuparams="-m 5120"
 
 ## 5. Verify the install
 ```
-root@qemux86-64:~# python3 -c "import tensorflow as tf; tf.enable_eager_execution(); print(tf.reduce_sum(tf.random_normal([1000, 1000])))"
-tf.Tensor(-604.65454, shape=(), dtype=float32)
+root@qemux86-64:~# python3 -c "import tensorflow as tf;print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
+tf.Tensor(-3304.6208, shape=(), dtype=float32)
 ```
 
 ## 6. Run tutorial case
 ### Refer: https://www.tensorflow.org/tutorials
 ```
-root@qemux86-64:~# cat >code.py <<ENDOF
+root@qemux86-64:~# cat >code-v2.py <<ENDOF
 import tensorflow as tf
 mnist = tf.keras.datasets.mnist
 
-(x_train, y_train),(x_test, y_test) = mnist.load_data()
+(x_train, y_train), (x_test, y_test) = mnist.load_data()
 x_train, x_test = x_train / 255.0, x_test / 255.0
 
 model = tf.keras.models.Sequential([
   tf.keras.layers.Flatten(input_shape=(28, 28)),
-  tf.keras.layers.Dense(512, activation=tf.nn.relu),
+  tf.keras.layers.Dense(128, activation='relu'),
   tf.keras.layers.Dropout(0.2),
-  tf.keras.layers.Dense(10, activation=tf.nn.softmax)
+  tf.keras.layers.Dense(10)
 ])
+
+predictions = model(x_train[:1]).numpy()
+tf.nn.softmax(predictions).numpy()
+loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)
+loss_fn(y_train[:1], predictions).numpy()
+
 model.compile(optimizer='adam',
-              loss='sparse_categorical_crossentropy',
+              loss=loss_fn,
               metrics=['accuracy'])
-
 model.fit(x_train, y_train, epochs=5)
-model.evaluate(x_test, y_test)
+model.evaluate(x_test,  y_test, verbose=2)
+
+probability_model = tf.keras.Sequential([
+  model,
+  tf.keras.layers.Softmax()
+])
+probability_model(x_test[:5])
+
+
 ENDOF
 
-root@qemux86-64:~# python3 ./code.py
-Downloading data from https://storage.googleapis.com/tensorflow/tf-keras-datasets/mnist.npz
-11493376/11490434 [==============================] - 7s 1us/step
-Instructions for updating:
-Colocations handled automatically by placer.
-Instructions for updating:
-Please use `rate` instead of `keep_prob`. Rate should be set to `rate = 1 - keep_prob`.
+root@qemux86-64:~# python3 ./code-v2.py
+2020-12-15 08:16:44.171593: I tensorflow/compiler/mlir/mlir_graph_optimization_pass.cc:116] None of the MLIR optimization passes are enabled (registered 2)
+2020-12-15 08:16:44.184464: I tensorflow/core/platform/profile_utils/cpu_utils.cc:112] CPU Frequency: 3099995000 Hz
 Epoch 1/5
-60000/60000 [==============================] - 27s 449us/sample - loss: 0.2211 - acc: 0.9346
+1875/1875 [==============================] - 14s 7ms/step - loss: 0.4833 - accuracy: 0.8595
 Epoch 2/5
-60000/60000 [==============================] - 24s 408us/sample - loss: 0.0969 - acc: 0.9702
+1875/1875 [==============================] - 13s 7ms/step - loss: 0.1549 - accuracy: 0.9558
 Epoch 3/5
-60000/60000 [==============================] - 26s 439us/sample - loss: 0.0694 - acc: 0.9780
+1875/1875 [==============================] - 13s 7ms/step - loss: 0.1135 - accuracy: 0.9651
 Epoch 4/5
-60000/60000 [==============================] - 23s 390us/sample - loss: 0.0540 - acc: 0.9832
+1875/1875 [==============================] - 13s 7ms/step - loss: 0.0889 - accuracy: 0.9729
 Epoch 5/5
-60000/60000 [==============================] - 24s 399us/sample - loss: 0.0447 - acc: 0.9851
-10000/10000 [==============================] - 1s 91us/sample - loss: 0.0700 - acc: 0.9782
+1875/1875 [==============================] - 13s 7ms/step - loss: 0.0741 - accuracy: 0.9777
+313/313 - 1s - loss: 0.0757 - accuracy: 0.9757
 ```
 ## 7. TensorFlow/TensorFlow Lite C++ Image Recognition Demo
 ```
 root@qemux86-64:~# time label_image
-2019-03-06 06:08:51.076028: I tensorflow/examples/label_image/main.cc:251] military uniform (653): 0.834306
-2019-03-06 06:08:51.078221: I tensorflow/examples/label_image/main.cc:251] mortarboard (668): 0.0218695
-2019-03-06 06:08:51.080054: I tensorflow/examples/label_image/main.cc:251] academic gown (401): 0.010358
-2019-03-06 06:08:51.081943: I tensorflow/examples/label_image/main.cc:251] pickelhaube (716): 0.00800814
-2019-03-06 06:08:51.083830: I tensorflow/examples/label_image/main.cc:251] bulletproof vest (466): 0.00535084
-real    0m 10.50s
-user    0m 3.95s
-sys 0m 6.46s
+2020-12-15 08:18:34.853885: I tensorflow/core/platform/profile_utils/cpu_utils.cc:112] CPU Frequency: 3099995000 Hz
+2020-12-15 08:18:41.565167: I tensorflow/examples/label_image/main.cc:252] military uniform (653): 0.834306
+2020-12-15 08:18:41.567874: I tensorflow/examples/label_image/main.cc:252] mortarboard (668): 0.0218696
+2020-12-15 08:18:41.568936: I tensorflow/examples/label_image/main.cc:252] academic gown (401): 0.0103581
+2020-12-15 08:18:41.569985: I tensorflow/examples/label_image/main.cc:252] pickelhaube (716): 0.00800819
+2020-12-15 08:18:41.571025: I tensorflow/examples/label_image/main.cc:252] bulletproof vest (466): 0.00535086
+
+real	0m7.178s
+user	0m6.101s
+sys	0m0.893s
+
 root@qemux86-64:~# time label_image.lite
-Loaded model /usr/share/label_image/mobilenet_v1_1.0_224_quant.tflite
-resolved reporter
-invoked
-average time: 1064.8 ms
-0.780392: 653 military uniform
-0.105882: 907 Windsor tie
-0.0156863: 458 bow tie
-0.0117647: 466 bulletproof vest
-0.00784314: 835 suit
-real    0m 1.10s
-user    0m 1.07s
-sys 0m 0.02s
+INFO: Loaded model /usr/share/label_image/mobilenet_v1_1.0_224_quant.tflite
+INFO: resolved reporter
+INFO: invoked
+INFO: average time: 213.584 ms
+INFO: 0.780392: 653 military uniform
+INFO: 0.105882: 907 Windsor tie
+INFO: 0.0156863: 458 bow tie
+INFO: 0.0117647: 466 bulletproof vest
+INFO: 0.00784314: 835 suit
+
+real	0m0.233s
+user	0m0.216s
+sys	0m0.012s
 ```
-- 
2.21.0

