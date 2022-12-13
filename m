Return-Path: <d.antliff@unsw.edu.au>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28547C4332F
	for <webhook@archiver.kernel.org>; Tue, 13 Dec 2022 21:11:40 +0000 (UTC)
Received: from AUS01-SY4-obe.outbound.protection.outlook.com (AUS01-SY4-obe.outbound.protection.outlook.com [40.107.107.118])
 by mx.groups.io with SMTP id smtpd.web11.86387.1670965892952663917
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Dec 2022 13:11:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@unsw.edu.au header.s=selector1 header.b=W9buMArZ;
 spf=pass (domain: unsw.edu.au, ip: 40.107.107.118, mailfrom: d.antliff@unsw.edu.au)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aRE+aA2Mb0FRWDgEb0YKHkVqvyP3Eb5XaGXJsSZLznpye4ex7o5aMY9A8in79UXCpKM2ztXbZPkY0hcukVpE4KqWrDUYX3S83QknqEpDtR7sCQmOalNKduhUIoN92UTRmUCkyknALTiYjWl4CWg1Qpy1owg8iAlyWQj768Hxltn/2b/isM6rj0NF1g/Nh2jOH2xHnTZHMq943PtAJG2jhjRSEa5CL729Q3fC3ZWYSnnguKAN8jKyYk5/U7sBnq4Qn1RyyGs6GhdbZKWOvOTJ3aAWvCVdG6ktBbfYdtNXwJDgBbU5Xx6BbS++sF28EowS/g81kbeWZV16Xn9l/nLQpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xVgQyo5FlMjM+zCX6h81lyDCjios83pwg6haUMZcLJw=;
 b=KAnZ4tlzMy+7Yy/7jKB8pxkty9/upXBzudawHAxSbnz+LQRNw6MRZ1YuA9q5YBvIM5p7N3ZpE8dUeb63+DGKgQKT1RsQItKgJck+uhRjdUcxSNqUvyZFYgsvHbbVb6doej09CSdh6TJYy9U4nEER7CPjLD1Rty8zk2ig6X6IAZbILdcvJG0twrr/9+dJdDBelpa3MA6BILTDQhpwozv3m0xBPNDOX75EvU0OnM7LooiUFC5PC1Q8lc8VGdWevdHmFs4hGJhQQP8p7oiDfW4nU6sboKgqkaznjIOiSYA/N0bt6no2gM1P5lM893ZvaeizIaI/zAXlfbWoqvaPYbVczw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=unsw.edu.au; dmarc=pass action=none header.from=unsw.edu.au;
 dkim=pass header.d=unsw.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unsw.edu.au;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xVgQyo5FlMjM+zCX6h81lyDCjios83pwg6haUMZcLJw=;
 b=W9buMArZ9BSBwJYNn0Ghmnc6cIlAXh8TOAA8B046UVlyDOP4h5FJ8ClbGp0NMA/sclmGkAui5e2awvb0Qyqzhh5E2SZbShglubRFlwuYQmZkZKWtHpd22V/PyMpMeezi029yEBJbo09MMKH8/Hs830w08Usw+3lrMzzK4cqID2k=
Received: from SY4PR01MB6797.ausprd01.prod.outlook.com (2603:10c6:10:136::13)
 by ME3PR01MB6039.ausprd01.prod.outlook.com (2603:10c6:220:e0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 21:11:29 +0000
Received: from SY4PR01MB6797.ausprd01.prod.outlook.com
 ([fe80::e176:8a0c:2e59:c56]) by SY4PR01MB6797.ausprd01.prod.outlook.com
 ([fe80::e176:8a0c:2e59:c56%4]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 21:11:28 +0000
From: David Antliff <d.antliff@unsw.edu.au>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Yocto with Monorepo - best practice for building apps that have
 source within the repo?
Thread-Topic: Yocto with Monorepo - best practice for building apps that have
 source within the repo?
Thread-Index: AQHZDzZOKZaFo3ZJk029kid3ZIb+qw==
Date: Tue, 13 Dec 2022 21:11:28 +0000
Message-ID: 
 <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=unsw.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SY4PR01MB6797:EE_|ME3PR01MB6039:EE_
x-ms-office365-filtering-correlation-id: f5ea03ad-9b57-4f68-ad25-08dadd4e99a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 K7AP5HPfmfm6L3HQYYr7v3qTYQprflMlwaQCSsAFD/E040ZpWCKgcCKwbNlctVVQt88O1KUV+u8qa6jnQ2mnw4Q/DYc3YMzD69UOPwVfVmDCrEuSZVIc+Q7fMbebxI9w08PPxgejQZen3rP6zMPzCFr58ykmf4hqfFaLqaHv3CwiQifWwaQfCy5AnX1fgj5a1eL2E7VqbdH4yIAdsGOThRGdeNQRQH/MKTxjoX8nwHAYnnqwbC7ZhDuA0vX1x7TfVUOooctJX85wW7P6xHKoJiIlcSaxj2VQIBwvVYVdKybC7JE89aecWsFP8O7LALSuXunoP5HUiSMD4HFG8P+q1kFq4zMKSPH6FG87BGr4/rjb2ukeVKQyS8NCmFIvCw1EP0icsz4uyolz/3EIorm7WEjKfJBN9wVC08oyrD8zWG2DeLUWqpMLUYN6aWBCr31IZ6CmeLWJko/1b1aKwaWnYGYRhAY4RkeG0+rY20EjyhaTCcwAK/idGCTM8f5UIs6ZjlfVmiJpBEGfKzSaMQXic3+fd5QLfsKq9heFoo9U2pwKyphucJpgFbFU1aQD6pSZNZHuLtIaADwPnKRfbaTg2O78o214p+WJADPNwiZ//StEYmyd0DBPqlRDCHw2faS5nrIjUrZUcJ3RQWdASsLg5sVnEomwKzWpRUde5Yw6ur/h6IktutZXfIa3VxwVghzFyJVEXVn4QDx4dyVJs8zLkA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SY4PR01MB6797.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(376002)(136003)(366004)(396003)(346002)(451199015)(83380400001)(186003)(5660300002)(52536014)(8676002)(8936002)(66446008)(66946007)(66476007)(26005)(9686003)(478600001)(76116006)(122000001)(66556008)(64756008)(38100700002)(33656002)(7696005)(6506007)(41300700001)(38070700005)(6916009)(2906002)(41320700001)(71200400001)(316002)(55016003)(86362001)(786003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?zsn00woXCr/bcxLiz9DCRv8X3SflmbE6fz1VEKYoTfW7UsgxBUUu7eE3Nh?=
 =?iso-8859-1?Q?8z6ht1D3YdT7FR7IkSHu3WxUlMjLBg/Bjqz3bocBZMFtXAtuGhIeI3kfDg?=
 =?iso-8859-1?Q?9kYQ3lh1Mx5WYN0ZDIZU3BkOpMjnb+DFVZPMePdByfJIIpy87WCH5wRxID?=
 =?iso-8859-1?Q?0uJC8qZ2lMZ8CcUOhsI2MxDdwfVuvuPC6t/aBgY0oRgARXk82u1s+CX3gZ?=
 =?iso-8859-1?Q?uULq8yaCpZRE6r1ST56F8FO67bjQtDjjeVcnpVRVzsdrJi5DeKz67+htLY?=
 =?iso-8859-1?Q?z7iBqEg5B7yKurUTxdimqlTZNkgw+dPAmCOfxS3K/+UQqPieataZ+X7t8W?=
 =?iso-8859-1?Q?35EwUeI2wIj/g8tnP6v8GPzXylzhMvkjn7FsXU9XXIssJA1gpfWgmtqfeS?=
 =?iso-8859-1?Q?/T5jJzkPcWJxMnfRzavsjV3/VEfUdEoDjPHzyddxTbWjaaXSvc09rnBQQA?=
 =?iso-8859-1?Q?bGr6g4u3e8CwZnj2JyrFv9jZYDGYU9dvvgxqIjjDIJ23TGrzzaAym7q+pU?=
 =?iso-8859-1?Q?OF1i8CQgmt7JJ6N5DupoAaUJJFmsKrZO3axnJvMHE1y/zlMPg5UUgNvIpW?=
 =?iso-8859-1?Q?xQBRpb65WBxmATtpVvtT1Khbq+c4lZqCG/Fhzh6HjqtQ7f73bP6mgnGp0X?=
 =?iso-8859-1?Q?cWB18P9XeG8CBJ/VdlioC+A/oi812Z+y7jIPVHiZ9LFWN+UCfnvMdDklZE?=
 =?iso-8859-1?Q?UqIdJqHUEZqbmHByqS4IYuJcCT8M0peuFwU5eIwBiYT+EQx5yQTEuXGXo3?=
 =?iso-8859-1?Q?V73m21U8PPm98PSg9iyLH6bvD4bsFWbwBqYX3wEeud34P2qsiy37LHkdSA?=
 =?iso-8859-1?Q?sO+CVNYQTJRsUbyKnVRGEM5hH5Than/VBdUv//TC4hweSXSm8kAnwd3siT?=
 =?iso-8859-1?Q?5iLmjwjDqnkMxiBjiRzqr5rFPbnpwYQsHZ7inUvuia6RBxz5vY1L8W34a1?=
 =?iso-8859-1?Q?MfeBWZloahMfcB3FWAsU7Uoo/0G3zXTUC2DLX/BLVssw8+dR7dKKRp673J?=
 =?iso-8859-1?Q?y6dWBFonXB4C0h4phpy03TfZQ8hLdAQY8l78I26W1EGM2vo0Ruqi3mG95/?=
 =?iso-8859-1?Q?q5pOaJYODCYr1+kVE1FEvhRZEZjGn6yK8PJWJNuID6aS67te0C6Uz8i0eR?=
 =?iso-8859-1?Q?0WYzSZRFL2DdKO0rX3WAE30MOtBEkIevpmcF05zQ272IDnyoSZqJNl6BGl?=
 =?iso-8859-1?Q?dvqSQIuUJKAKDugnX4ep48WL4H9viz+HrHlQbOlitectfBl9KmFZQV24r6?=
 =?iso-8859-1?Q?6lCwJmgLPQIBKGlinPjcqjk0Keoc7I9SG/XOZRmd1hdmfuxqUlrsAT2zrk?=
 =?iso-8859-1?Q?UwF+0qmGCKp+otAILqIQzT+fwXOQ6z7aPAegO2zk9dPzBoWXD3jMsvvbPD?=
 =?iso-8859-1?Q?SpH6DrYLAUb4npmBl75FLol7kx15I14t51SQvcCsLq0mQdW1XfEXPkGjOE?=
 =?iso-8859-1?Q?4ct3X7kXeMlSDic7B3sxJiU+VPcAWVnNdlkhIdw9B0LqAyhaHHcGMu9A4/?=
 =?iso-8859-1?Q?MMuSt1+a6KTgv1ljKs+guDcbNJ1cH2oYHQXziVFXYWjh6DqKzqwI6L54w2?=
 =?iso-8859-1?Q?YoUwga6DgF6tYJ9/t12aGHmxcTJmOcU/JbgUpGa7lMZdJYXpmTG57Wdxv6?=
 =?iso-8859-1?Q?va9cAbeJ8sf0p4AYEu48HWHHwJo0aXCib0?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: unsw.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY4PR01MB6797.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ea03ad-9b57-4f68-ad25-08dadd4e99a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2022 21:11:28.0796
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ff6cfa4-e715-48db-b8e1-0867b9f9fba3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dzSyuY4e3q24Yw4y3R57HBayj4mcdFKHTGEWDED/i61MHNo2T/8Fd9SbuHjKzr4t5KwQJ885NFO+hyb6XUGBPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3PR01MB6039
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Dec 2022 21:11:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58787

Hello,=0A=
=0A=
I'm seeking advice around using Yocto in a mono-repository, =0A=
specifically how to include my own C/C++ applications that have their =0A=
source code stored elsewhere in the same repository (and specifically=0A=
not under the recipe's files/ directory, or anywhere in the layer structure=
).=0A=
=0A=
For example, my project might be structured like this:=0A=
=0A=
  myproject/   (root of repository)=0A=
      - src/myapp1  (C++ app with Makefile)=0A=
      - src/myapp2  (C app with CMakeLists.txt)=0A=
      - yocto/layers/meta-local/myapps/=0A=
          - myapp1.bb=0A=
          - myapp2.bb=0A=
=0A=
The core of the matter is that the applications' source is not in a =0A=
separate repository, so bitbake's fetcher needs to look locally, rather =0A=
than remote. Having bitbake download the same repository again via git =0A=
seems inefficient, and it's also potentially a huge download.=0A=
=0A=
I've looked at using EXTERNALSRC but it disables devtool, which I really =
=0A=
need to use. When set to an absolute path (based on TOPDIR), it also =0A=
does weird things with the paths in the build directory, resulting in a =0A=
directory tree that depends on the user's environment (the path to their=0A=
home directory, the path to where they checked out the mono-repo, etc).=0A=
It is also considered "hacky" and not for production use according to =0A=
some sources. I don't think I can use this.=0A=
=0A=
I've also looked at setting FILESEXTRAPATHS to an absolute directory =0A=
based on TOPDIR, and this actually works, but the Yocto docs seem to =0A=
implicitly discourage this, as my recipe is in a .bb file:=0A=
=0A=
| Best practices dictate that you accomplish this by using FILESEXTRAPATHS =
from within a .bbappend file=0A=
=0A=
What would go wrong if I did set this in a .bb file?=0A=
=0A=
Another option is to have the external system that invokes bitbake (in =0A=
my case, a GitLab-CI pipeline script) make sure that a fresh tarball is =0A=
created from the original source and put into the files/ directory at =0A=
build time. Although this will work, and it seems clunky, if it's the =0A=
best option then I'll use it. Not sure yet how to handle tarball=0A=
checksums in this case though.=0A=
=0A=
Is anyone using Yocto in a monorepo? If so, what approach would you=0A=
recommend for the mono-repo project structure?=0A=
=0A=
Note: my applications' source files are outside of the Yocto layer tree=0A=
because they are independent of Yocto and can be built with other=0A=
toolchains - that's why I haven't put them under the files/ directory.=0A=
=0A=
-- David.=

