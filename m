Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18F77E009B8; Wed, 12 Sep 2018 00:13:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz23.laposte.net [194.117.213.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A29C4E0097D
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 00:13:00 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 8C3B2530727
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 09:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1536736379; bh=S92/GHwI3wwashfqBMLj+3a1NM81kkOVRmCi+uL03K8=;
	h=To:Subject:References:Date:Cc:From:In-Reply-To;
	b=cZ92uJNvf37pWhdxXBa9Nwb9k6lLhiURmUrsiCJ8SlNlhwvXhtC3c+wxFQtObvivF
	AFJjoSzknjF4TkDUqf64dfYIzgmdBITrXEI8rPbb61hpVPGZhnEJe4XFg0Os6Wi9R6
	M7l2gGnECv3QnWNjFeBjl5LOWwZmjIt2xyevrHWofjDRf+nqSno3+JQtWPUBiz2Lej
	BIHumumlINA4W3SddEzQpBWd/AQ/0HKGC6k5WtOfCYywL1UOsQMwwJivjzm4F3p323
	O9T8/kQTq2okeFJo4mNLXnLjhPie1Ex6LnnTzuTnLwsESH6Q1pnNQn9Xlc+k4NLMML
	Qvse6cB309ICQ==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 7DF1353072C
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 09:12:59 +0200 (CEST)
Received: from lpn-prd-vrin004 (lpn-prd-vrin004.laposte [10.128.63.5])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 750D05306E4
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 09:12:59 +0200 (CEST)
Received: from lpn-prd-vrin004 (localhost [127.0.0.1])
	by lpn-prd-vrin004 (Postfix) with ESMTP id 6561B7289BD
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 09:12:59 +0200 (CEST)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin004 (Postfix) with ESMTPA id 2CA4372898A;
	Wed, 12 Sep 2018 09:12:59 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Khem Raj"
	<raj.khem@gmail.com>
References: <op.zo6ne1yymnlnty@pc-mls.ecafaros.local>
	<2b6eed65-c5f3-55ec-b42c-0465385f1d83@gmail.com>
Date: Wed, 12 Sep 2018 09:12:58 +0200
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.zo7vnwb2mnlnty@pc-mls.ecafaros.local>
In-Reply-To: <2b6eed65-c5f3-55ec-b42c-0465385f1d83@gmail.com>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrgedtjedrjeefgdduvdehucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhht
X-VR-Cause-3: shculddquddttddmnecujfgurheptgfvufhfffgggffhkfgjfgesthfsredttderleenucfhrhhomhep
X-VR-Cause-4: ihguvggrlhhsihhmuceoihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhep
X-VR-Cause-5: ohhpvghrrgdrtghomhdpghhithhhuhgsrdgtohhmnecukfhppedvuddvrddvfeegrdefiedrudefheen
X-VR-Cause-6: ucfrrghrrghmpehmohguvgepshhmthhpohhuthdpihhnvghtpedvuddvrddvfeegrdefiedrudefhedp
X-VR-Cause-7: hhgvlhhopehptgdqmhhlshdrvggtrghfrghrohhsrdhlohgtrghlpdhmrghilhhfrhhomhepihguvggr
X-VR-Cause-8: lhhsihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohephihotghtoheshihotghtohhprhhojhgv
X-VR-Cause-9: tghtrdhorhhgpdhrtghpthhtoheprhgrjhdrkhhhvghmsehgmhgrihhlrdgtohhmpdhrtghpthhtohep
X-VR-Cause-10: rhgrjhdrkhhhvghmsehgmhgrihhlrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: Re: [meta-raspberry]rpi-config
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
X-List-Received-Date: Wed, 12 Sep 2018 07:13:02 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Hi, this patch didn't resolve this issue.

On my image, i just add rpi-congig on IMAGE_INSTALL +=3D
The recipe is builded witout error but after can't build my image !

regards

Le Tue, 11 Sep 2018 18:43:22 +0200, Khem Raj <raj.khem@gmail.com> a =E9c=
rit:

>
>
> On 9/11/18 8:17 AM, idealsim wrote:
>> Hi i'm trying to build an image for a raspberry-pi 3 on branch sumo b=
ut
>> i have an error when i try to include rpi-config. See the issue under=
 :
>>
>> ERROR: Task do_populate_sdk in
>> /media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-xxx/rec=
ipes-xxxx/images/console-image-xxxx.bb
>> rdepends upon non-existent task do_package_write_rpm in
>> /media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-raspber=
rypi/recipes-bsp/bootfiles/rpi-config_git.bb
>>
>> ERROR: Command execution failed: 1
>>
>> Do you have an idea how i can resolve this please ?
>>
>
> can you try this patch and report back if it helps or not
>
> https://github.com/kraj/meta-raspberrypi/commit/095f642e7c064b44d12854=
966468cc5a2699d8fd
>
>> Regards,
>>
>> Micka=EBl
>


-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

