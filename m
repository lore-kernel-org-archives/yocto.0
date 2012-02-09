Return-Path: <davidsmoot@gmail.com>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73412E0136A
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 19:11:25 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so2487033obb.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 19:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=mPBm5yWZmsk0OncT3Tpn0TOPKTbMS1fhhwneFf0zrW0=;
	b=N5b6V1jzUKiu42DeGFKxBzxWg2jRtKh5YvNturvTv81gUixOiBkLQJUXCMPoCJt0wS
	UPqCEjNW0d9QNn/6YpS3NSUKpoJvl8ZLtFZcUwpo/XNiN4iEZNdFi8IL8nyuo246PpLE
	YR98u7kEyq0fiEFc3jFHSfwYIbHp8LBRsUJdg=
Received: by 10.182.162.36 with SMTP id xx4mr10019139obb.70.1328757085036;
	Wed, 08 Feb 2012 19:11:25 -0800 (PST)
Received: from [192.168.1.97] (70-139-182-143.lightspeed.hstntx.sbcglobal.net.
	[70.139.182.143])
	by mx.google.com with ESMTPS id b7sm1151140obj.9.2012.02.08.19.11.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 08 Feb 2012 19:11:24 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1084)
From: David Smoot <davidsmoot@gmail.com>
In-Reply-To: <4F32843F.70500@cnx-software.com>
Date: Wed, 8 Feb 2012 21:11:22 -0600
Message-Id: <E4396C3C-30C9-4878-A116-DFA1EDC638D7@gmail.com>
References: <4F322ECE.5060004@cnx-software.com>
	<CADzUK1LbB_yr6pfO4nWsSWz4MTEyZDsMBwtn_G4qzdghPCsrhg@mail.gmail.com>
	<4F32843F.70500@cnx-software.com>
To: cnxsoft <cnxsoft@cnx-software.com>,
 yocto@yoctoproject.org
X-Mailer: Apple Mail (2.1084)
Subject: Re: Yocto in Virtualbox
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Feb 2012 03:11:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Feb 8, 2012, at 8:18 AM, cnxsoft wrote:

On 08/02/2012 21:06, autif khan wrote:
> On Wed, Feb 8, 2012 at 3:14 AM, cnxsoft<cnxsoft@cnx-software.com>  =
wrote:
>> Hi,
>>=20
>> .255.0 oprofile.timer=3D1 "
>> Enabling opengl
>>=20
> So, what is the problem?

>Qemu starts apparently fine, but the qemu window stays black.

I would try one of the pre-built images to isolate the problem between =
running inside virtualbox and your build.=20


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

David Smoot
davidsmoot@gmail.com




