Return-Path: <tobias.grueninger.ext@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0CFEE00A5C; Thu,  6 Apr 2017 09:19:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [194.138.37.40 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0003]
X-Greylist: delayed 585 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Apr 2017 09:19:36 PDT
Received: from gecko.sbs.de (gecko.sbs.de [194.138.37.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CFC5E00887
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 09:19:35 -0700 (PDT)
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
	by gecko.sbs.de (8.15.2/8.15.2) with ESMTPS id v36G9l9g031724
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 6 Apr 2017 18:09:47 +0200
Received: from DEFTHW99ERLMSX.ww902.siemens.net
	(defthw99erlmsx.ww902.siemens.net [139.22.70.136])
	by mail2.sbs.de (8.15.2/8.15.2) with ESMTPS id v36G9kfp019086
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 6 Apr 2017 18:09:46 +0200
Received: from DENBGAT9EM3MSX.ww902.siemens.net ([169.254.10.48]) by
	DEFTHW99ERLMSX.ww902.siemens.net ([139.22.70.136]) with mapi id
	14.03.0339.000; Thu, 6 Apr 2017 18:09:46 +0200
From: "Grueninger, Tobias" <tobias.grueninger.ext@siemens.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Ad git revision to image name
Thread-Index: AdKu8DV+KnaJyhSvQmaI2NdWdAyxMg==
Date: Thu, 6 Apr 2017 16:09:45 +0000
Message-ID: <3E4CC6F34B562B4B97331BC65A14FD20C09BCD@DENBGAT9EM3MSX.ww902.siemens.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.33]
MIME-Version: 1.0
Subject: Ad git revision to image name
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Apr 2017 16:19:38 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I have a question:
I would like to automatically add the git Revison checksum to the generated=
 Yocto image name, e.g. 'core-image-git_bc123456.img'
I fail miserably to add this in my image recipe - any help appreciated
Regards
Tobias


