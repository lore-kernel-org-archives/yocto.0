Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7405.1608125494682530081
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:31:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=fUYR7WfD;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (mail-eopbgr680045.outbound.protection.outlook.com [40.107.68.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A105838C04B3
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:31:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BRB6zKbJiv7ERQK5rSqACEA7wZJ7QoxYmm+BxFQeDyGSLr8ocPVgsWtKVj00ITlPMKUns0qudPVUP3IdeV9nl2aAYSt2Bt2o/urAbxp0CF87QntIetf/9C5gNenSdCPT0GfWHUQ2cc4A4YZWZ0lWWN+KZgO0bJws6QSGdaDIAVVkfosOJGd8bdcoNDDkpL/GIYDb4oj0l8/StVqh6ukY5gaNfhz5Ngn48GlNexSM20+Ntea49zMy+0p5cy6Md8jVO8YAui7OXzB8MYXr/ndFn+KHaMnjtOqoLiI7SSjMaaOmm16/R1bPmrfa9npvmGe1v1GUu9Pv0FIabAXeE51XaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tR55KmkdFtDkTka/chqiG4z/YCUaJ3hZr6RJhCqQRGY=;
 b=CHxulYWOnR0ErJUFCA3X/3jl+ZifrZWZrXmSYtaZ7IIMyuPv7FHTosrD/fIe48US6X7VyccB1jfaYPZNgK1d9ybEnwFpY72NL1nZmHo6BN7qbiOopGLVlBQtELGDyc+m3UOC99G6iX+ErdsNfqa0Rl+dcTtQozUA/PWJPQiSDJeFZC/nH0Vjj/DwIPjcFNIEeK5I3wJgrlPvLXgY7tM9ksXPd3ou8Qp28lNaOvNMmoKtx5lMYRTIjuqDmdeGQ+0Rzxpt5XTOHAZfORpl2sMUH6gSndmG2j642VFMN8LIhS1Nz8ToM8BxQdX2UnGqu9rhBf2Iykds2sPbF6qAcIEWvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tR55KmkdFtDkTka/chqiG4z/YCUaJ3hZr6RJhCqQRGY=;
 b=fUYR7WfD+ZhyxVYa5FXVOJETwtf5X3ipszM3l4zYuvSN3fD6VvRw4QFQO91lWdbZzYLKj/QklAS89/cQBawuXWJsu8qwLz782lQOdFgDKUyCSHFe350HjoZ0OQSKO0XBWYcSNLoeYGGwmskCNKc0XIgDTPBJ2RwLhA676mLn+XI=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.15; Wed, 16 Dec
 2020 13:31:31 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:31:31 +0000
Subject: Re: [yocto] Review request 0/25:[meta-tensorflow] upgrade tensorflow 1.13.1 -> 2.4.0.rc4
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com, philip@balister.org, akuster808@gmail.com,
 marek.belisko@gmail.com, yocto@yoctoproject.org
References: <1651345E79D90CAD.31352@lists.yoctoproject.org>
Message-ID: <17ad7d52-0212-1f5b-79db-11b553facb81@windriver.com>
Date: Wed, 16 Dec 2020 21:31:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <1651345E79D90CAD.31352@lists.yoctoproject.org>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR03CA0046.apcprd03.prod.outlook.com
 (2603:1096:202:17::16) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.131] (60.247.85.82) by HK2PR03CA0046.apcprd03.prod.outlook.com (2603:1096:202:17::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.9 via Frontend Transport; Wed, 16 Dec 2020 13:31:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b0185849-ac04-4862-e0de-08d8a1c6e650
X-MS-TrafficTypeDiagnostic: DM6PR11MB4204:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB42040FE27856BE224DF8E34094C50@DM6PR11MB4204.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5xgNk0T+KRJRI4C+VdQU2U6W07lokr/mGTacE6zngO/nf2uiiBJkpfYwbX/cWME/h7KxGkHKJPRn9IqYU1GMMLnLeCKoHIvlwU/62aeB4sTwCwA/b2JPP5ge5GAGQZvzzwQcy3zgIxk8wwybT9fqjY/B0JIH54MK4EJ2baFfs0tpX8c8gWQ6dxKt969oMpR6JZQUKBCvswKrOuDoyF8A8G9sFGw3NX91Ync38RUJ2SbbacwiajmTsAHZ63CioekueyyXlSvztUytKhHEWaW/mDDpJrWFrlLCWPYqM23TVfmqxJpW8c+LtNK+KMcfOzweGoNajJketm8ZSMx2jdDwMqmJiNnp1ofBsYF04gSCEqljBELbtH+9Ju/P/las9cu9Whr6EjhykCNs9FRPzgC1he7LJnx/3KHn3XCpGzzw4NS9isOLfU5Wbf0CxQBTVTsdWyS78gv5Vh42P9BFDtDPs/7vDQcyCxuEhKSzZHPwvVrab1RD/HMlIoaeP2lCpl7NivYlRaa0Fzqj3AcsWS5Fag==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(366004)(376002)(346002)(136003)(2616005)(26005)(966005)(83380400001)(66556008)(6666004)(33964004)(6706004)(956004)(66946007)(186003)(53546011)(6486002)(86362001)(16576012)(31696002)(66476007)(44832011)(36756003)(316002)(52116002)(8936002)(8676002)(2906002)(5660300002)(16526019)(4001150100001)(478600001)(31686004)(166002)(78286007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?K1p1VzVXTTh4UTd5czZTR3A5YU80MHVnTEpTdkpHd3pPUk9POFlrWUV2Y1Vl?=
 =?utf-8?B?aHBmam5weldsTWV3VTBEWXB0enBPcGdHUEltb0xHQjJyZnlJUTdzNVY0cE5o?=
 =?utf-8?B?YXNuYWlRL09WOTBiVWR3a2FNbnNRNWxoTHE4dHFtcmJoRUR0di9Tc0p0ampr?=
 =?utf-8?B?QkoxNEV3NjdTa2dzZ0RmRXdtYnlzVWtCcm1Jc1UwRi81cTVKYmJlL1owYVNq?=
 =?utf-8?B?empjNnF5SENOQWVIb3J3R1VWelpsVW0vOVJ5MFRYbTBnNmhYVXBNYlFlekZF?=
 =?utf-8?B?bXNSVnJBM0YvRVBDT2l2MCtTTHNZSkQ0cVJhZkRKckk2ZlVKb3hlclpnM29J?=
 =?utf-8?B?Rkcwa3hpUHY1ZkVjbW5zZi93TlFkNXowbDFLYXVpZytJN2xBM2tvOUdEQ2pW?=
 =?utf-8?B?SUtZeGk0RVNtYU1YMmpsUzliaTJxbVk2d3VSeFRLSzhPSHNIZVNqb1NHMmQ2?=
 =?utf-8?B?RTdZRlF1M1QzS0ZGQURKTVJidlNrNW10eFBORnpXSDNlQlgxQ2dHNmJqUHlF?=
 =?utf-8?B?enJEQitaUXNRZG5ZL3NJUzR2NDRjZFIvVFlRYS9SM0VWUWc5TFhrRWZoOXh5?=
 =?utf-8?B?VTRXVTNETjJCUUtvVTR1bGpEbFNBaUlMeWh0R0tSL2liWjZCcDlKRUpXRndS?=
 =?utf-8?B?SldQMWdlVWg0MHRkc2JxeHd4aG1RcWFTYjE0UTkxSVcvZWhJUC9HWWZaZEpk?=
 =?utf-8?B?bGxFZmg3dnlQUWtVNjNKaWhuRmpIcWtyYWdRYmFpU1dVSmQ1M3VpUmxFUlRB?=
 =?utf-8?B?MmRBM0dTWVo1enRjL21hVmhEN3E2SGRWeG1CZEdQNmNXN2poSnZEemlwQWdP?=
 =?utf-8?B?bUxKaS9ROFRLOXkvTFBjTlA0ZFNnZVJva0l3Nms3eGw1QStNVmYvWVVlTGhk?=
 =?utf-8?B?VTZXcktzK0QzYi9qV083WENkUXByckhQbnA5VGkzc1dWTzduS2hpeGNtMENw?=
 =?utf-8?B?a3E4UU5oZXRsdW01QzBkSndvaVR6c1B0U3FpZXk4aFRiL2QyNENLTFhkdzhy?=
 =?utf-8?B?bU5VTWxHMUhpdFBCbXZxSWZuUzhtdTIxTG40djVmSm9LMUZBaWhaalAvL0s0?=
 =?utf-8?B?c0ZJQUtDSGdGOHVPZVNZZXBRNjNiRmxHdjgrdGovNFFLby9IMUNIWnNUVys3?=
 =?utf-8?B?VVRHRzZPckxQN2JJa3UrTmJITmRWL2llVUlmaFZmeCtTTTlaYmNHSkRiT0VD?=
 =?utf-8?B?VmU2TFNoU2gvcEpCanlZVUpsVkFtZ0Y2eGNxZzU0SUpSYmcxeTdXUXlOcjZv?=
 =?utf-8?B?ZmowWmtmV0tpQ3BTQkRIS3F6d050MU1PVlVpN0l6UG9qUTBMWFZrSXd1bVd4?=
 =?utf-8?Q?5/HV/qJ4WWHQU6QihuazUYwdO46lGtoR8w?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:31:31.1922
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: b0185849-ac04-4862-e0de-08d8a1c6e650
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bAXr6FUfVH9ue5y8pZUpBHBPvlpTwRU/pxJQ6bIRavfw9q/VN9L9fD0/LW8U1KqaA1WyvdTfvdEm+RWHR8leKtGpRVTRr2SRxq+/EWbbEWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4204
Content-Type: multipart/alternative;
 boundary="------------64061CE954322BCF1FDFBEEB"
Content-Language: en-US

--------------64061CE954322BCF1FDFBEEB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

This series requires to work with two OE patches which I've submitted to 
OE mailing list

//Hongxu

On 12/16/20 9:07 PM, hongxu wrote:
> # Build and Run
> ## 1. Clone away
> ```
> $ mkdir <ts-project>
> $ cd <ts-project>
> $ git clone git://git.yoctoproject.org/meta-tensorflow
> $ git clone git://git.openembedded.org/meta-openembedded
> $ git clone git://git.openembedded.org/openembedded-core oe-core
> $ cd oe-core
> $ git clone git://git.openembedded.org/bitbake
> ```
>
> ## 2. Prepare build
> ```
> $ . <ts-project>/oe-core/oe-init-build-env <build>
>
> # Build qemux86-64 which runqemu supports kvm.
> $ echo 'MACHINE = "qemux86-64"' >> conf/local.conf
>
> $ echo 'IMAGE_INSTALL_append = " tensorflow"' >> conf/local.conf
>
> Edit conf/bblayers.conf to include other layers
> BBLAYERS ?= " \
>      <ts-project>/oe-core/meta \
>      <ts-project>/meta-openembedded/meta-python \
>      <ts-project>/meta-openembedded/meta-oe \
>      <ts-project>/meta-tensorflow \
> "
> ```
> ## 3. Build image
> ```
> cd <build>
> $ bitbake core-image-minimal
> ```
>
> ## 4. Start qemu with slrip + kvm + 5GB memory:
> ```
> $ runqemu qemux86-64 core-image-minimal slirp kvm qemuparams="-m 5120"
> ```
>
> ## 5. Verify the install
> ```
> root@qemux86-64:~# python3 -c "import tensorflow as tf;print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
> tf.Tensor(-3304.6208, shape=(), dtype=float32)
>
> ## 6. Run tutorial case
> ### Refer: https://www.tensorflow.org/tutorials
> ```
> root@qemux86-64:~# cat >code-v2.py <<ENDOF
> import tensorflow as tf
> mnist = tf.keras.datasets.mnist
>
> (x_train, y_train), (x_test, y_test) = mnist.load_data()
> x_train, x_test = x_train / 255.0, x_test / 255.0
>
> model = tf.keras.models.Sequential([
>    tf.keras.layers.Flatten(input_shape=(28, 28)),
>    tf.keras.layers.Dense(128, activation='relu'),
>    tf.keras.layers.Dropout(0.2),
>    tf.keras.layers.Dense(10)
> ])
>
> predictions = model(x_train[:1]).numpy()
> tf.nn.softmax(predictions).numpy()
> loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)
> loss_fn(y_train[:1], predictions).numpy()
>
> model.compile(optimizer='adam',
>                loss=loss_fn,
>                metrics=['accuracy'])
> model.fit(x_train, y_train, epochs=5)
> model.evaluate(x_test,  y_test, verbose=2)
>
> probability_model = tf.keras.Sequential([
>    model,
>    tf.keras.layers.Softmax()
> ])
> probability_model(x_test[:5])
>
> ENDOF
>
> root@qemux86-64:~# python3 ./code-v2.py
> 2020-12-15 08:16:44.171593: I tensorflow/compiler/mlir/mlir_graph_optimization_pass.cc:116] None of the MLIR optimization passes are enabled (registered 2)
> 2020-12-15 08:16:44.184464: I tensorflow/core/platform/profile_utils/cpu_utils.cc:112] CPU Frequency: 3099995000 Hz
> Epoch 1/5
> 1875/1875 [==============================] - 14s 7ms/step - loss: 0.4833 - accuracy: 0.8595
> Epoch 2/5
> 1875/1875 [==============================] - 13s 7ms/step - loss: 0.1549 - accuracy: 0.9558
> Epoch 3/5
> 1875/1875 [==============================] - 13s 7ms/step - loss: 0.1135 - accuracy: 0.9651
> Epoch 4/5
> 1875/1875 [==============================] - 13s 7ms/step - loss: 0.0889 - accuracy: 0.9729
> Epoch 5/5
> 1875/1875 [==============================] - 13s 7ms/step - loss: 0.0741 - accuracy: 0.9777
> 313/313 - 1s - loss: 0.0757 - accuracy: 0.9757
> ```
> ## 7. TensorFlow/TensorFlow Lite C++ Image Recognition Demo
> ```
> root@qemux86-64:~# time label_image
> 2020-12-15 08:18:34.853885: I tensorflow/core/platform/profile_utils/cpu_utils.cc:112] CPU Frequency: 3099995000 Hz
> 2020-12-15 08:18:41.565167: I tensorflow/examples/label_image/main.cc:252] military uniform (653): 0.834306
> 2020-12-15 08:18:41.567874: I tensorflow/examples/label_image/main.cc:252] mortarboard (668): 0.0218696
> 2020-12-15 08:18:41.568936: I tensorflow/examples/label_image/main.cc:252] academic gown (401): 0.0103581
> 2020-12-15 08:18:41.569985: I tensorflow/examples/label_image/main.cc:252] pickelhaube (716): 0.00800819
> 2020-12-15 08:18:41.571025: I tensorflow/examples/label_image/main.cc:252] bulletproof vest (466): 0.00535086
>                                                                                                                                         
> real    0m7.178s
> user    0m6.101s
> sys 0m0.893s
>                                                                                                                                         
> root@qemux86-64:~# time label_image.lite
> INFO: Loaded model /usr/share/label_image/mobilenet_v1_1.0_224_quant.tflite
> INFO: resolved reporter
> INFO: invoked
> INFO: average time: 213.584 ms
> INFO: 0.780392: 653 military uniform
> INFO: 0.105882: 907 Windsor tie
> INFO: 0.0156863: 458 bow tie
> INFO: 0.0117647: 466 bulletproof vest
> INFO: 0.00784314: 835 suit
>
> real    0m0.233s
> user    0m0.216s
> sys 0m0.012s
>
> 
>


--------------64061CE954322BCF1FDFBEEB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">This series requires to work with two
      OE patches which I've submitted to OE mailing list</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">//Hongxu</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 12/16/20 9:07 PM, hongxu wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:1651345E79D90CAD.31352@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap=""># Build and Run
## 1. Clone away
```
$ mkdir &lt;ts-project&gt;
$ cd &lt;ts-project&gt;
$ git clone git://git.yoctoproject.org/meta-tensorflow
$ git clone git://git.openembedded.org/meta-openembedded
$ git clone git://git.openembedded.org/openembedded-core oe-core
$ cd oe-core
$ git clone git://git.openembedded.org/bitbake
```

## 2. Prepare build
```
$ . &lt;ts-project&gt;/oe-core/oe-init-build-env &lt;build&gt;

# Build qemux86-64 which runqemu supports kvm.
$ echo 'MACHINE = &quot;qemux86-64&quot;' &gt;&gt; conf/local.conf

$ echo 'IMAGE_INSTALL_append = &quot; tensorflow&quot;' &gt;&gt; conf/local.conf

Edit conf/bblayers.conf to include other layers
BBLAYERS ?= &quot; \ 
    &lt;ts-project&gt;/oe-core/meta \
    &lt;ts-project&gt;/meta-openembedded/meta-python \
    &lt;ts-project&gt;/meta-openembedded/meta-oe \
    &lt;ts-project&gt;/meta-tensorflow \
&quot;
```
## 3. Build image                                                                                                                      
```                                                                                                                                    
cd &lt;build&gt;                                                                                                                             
$ bitbake core-image-minimal                                                                                                           
```

## 4. Start qemu with slrip + kvm + 5GB memory:
```
$ runqemu qemux86-64 core-image-minimal slirp kvm qemuparams=&quot;-m 5120&quot;
```

## 5. Verify the install
```
root@qemux86-64:~# python3 -c &quot;import tensorflow as tf;print(tf.reduce_sum(tf.random.normal([1000, 1000])))&quot;
tf.Tensor(-3304.6208, shape=(), dtype=float32)

## 6. Run tutorial case
### Refer: <a class="moz-txt-link-freetext" href="https://www.tensorflow.org/tutorials">https://www.tensorflow.org/tutorials</a>
```
root@qemux86-64:~# cat &gt;code-v2.py &lt;&lt;ENDOF
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
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------64061CE954322BCF1FDFBEEB--
