Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A316E0166A; Tue,  5 Jun 2018 07:50:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD73AE01649
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2018 07:50:37 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id l19-v6so3683966ioj.5
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2018 07:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QrUlpuCqmxtAYxZ7yWt+Fvp8bOxmMsEWIIIivHRFrA8=;
	b=Vu75A4CSS0qFDYJwIXL8u/8BE3wDF5glz7C9SO18QYEnNL0HenMyzr35qq7Dbzducd
	MGstogMuG1Mfo00g1CTLyZw2STLb2KLNi49V1xJDUFC/n+y+SqiW6RRTpp5x3mLe0H1S
	Q4Sr6XaPwaUJemgu1yKzCwdj/LvQgBWxJmDr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QrUlpuCqmxtAYxZ7yWt+Fvp8bOxmMsEWIIIivHRFrA8=;
	b=jyvUh2fa7z6vj2kXsuOVR0HGt/5ac8XJIiDEc/p6EXSZnEEwsGCr5jIhmxveXonBwx
	urBwuGcttgam8pGhg4DwwOeAVLiKu26V/ldIyWFakbX0G1cejQQ749tWafWj6apnAK4t
	WtR9uWcumLrLri8Tf651MX6v0uxOBtuTVk5L4hoEn5Q8myo0uLx5zFi9Hk9sMQecfjoy
	9Dqo4yjEzJWu6uDnyHMPHOV3VmSJTGDiGpoNeb9QMuWuoH9Io7fGxhP+/1gSLpWTxgrG
	2Sz4t9gtYJ9exQER9KeUNA4W5Y78xc07D2eZT5IcS41ioifNb2oCGS4eJ0nlCliUY/rg
	vnbA==
X-Gm-Message-State: ALKqPwdOePQ+JWW4tM1lHFuZrx4iWyuo2yvYF5FOfFdl8fP97wNvRRZu
	N+ARjoJ0mvrAUgoaA9jLMuQK3e/jZAtHYvxCKN9xAlvz
X-Google-Smtp-Source: ADUXVKKhJ4ZKJC9JxO36pUzFMMK4NfuFJJey1MGa31dSpaEWE9joYmLkBwq9pEz6o8fZjyN76qS9QGifmE62LgaHCvs=
X-Received: by 2002:a6b:214a:: with SMTP id
	h71-v6mr24170280ioh.229.1528210237323; 
	Tue, 05 Jun 2018 07:50:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b86:0:0:0:0:0 with HTTP;
	Tue, 5 Jun 2018 07:50:36 -0700 (PDT)
In-Reply-To: <443D9650-0A26-433A-AC22-F61DBFDE1221@gmail.com>
References: <443D9650-0A26-433A-AC22-F61DBFDE1221@gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Tue, 5 Jun 2018 16:50:36 +0200
Message-ID: <CAALXFYwLpD0yr1s2CA9XT0X2iRhi_ApaAjW1Mra6ZonJb+s_kA@mail.gmail.com>
To: Mihaela Apetroaie-Cristea <apetroaiecristeamihaela@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: partitions resizing on the fly
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
X-List-Received-Date: Tue, 05 Jun 2018 14:50:39 -0000
Content-Type: multipart/alternative; boundary="000000000000569a5d056de62cbf"

--000000000000569a5d056de62cbf
Content-Type: text/plain; charset="UTF-8"

I managed this issue redefining this script in my custom layer (rocko
branch):

    scripts/lib/wic/canned-wks/mkefidisk.wks

and setting a bigger size for the root partition (80GB in my case):

    part / --source rootfs --ondisk sda --fstype=ext4 --label platform
--align 1024 --use-uuid --*size 80000*

Its not very nice, I know. But yocto can't know the real size of your root
device until writing the final image.

I don't know if this is the best way to fix this  but it works.
  -- Ivan

--000000000000569a5d056de62cbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I managed this issue redefining this script in my custom l=
ayer (rocko branch):<div><br></div><div>=C2=A0 =C2=A0 scripts/lib/wic/canne=
d-wks/mkefidisk.wks<br></div><div><br></div><div>and setting a bigger size =
for the root partition (80GB in my case):</div><div><br></div><div>=C2=A0 =
=C2=A0 part / --source rootfs --ondisk sda --fstype=3Dext4 --label platform=
 --align 1024 --use-uuid --<b>size 80000</b><br></div><div><br></div><div>I=
ts not very nice, I know. But yocto can&#39;t know the real size of your ro=
ot device until writing the final image.</div><div><br></div><div>I don&#39=
;t know if this is the best way to fix this=C2=A0 but it works.=C2=A0<br><d=
iv>=C2=A0 -- Ivan</div><div><br></div></div><div class=3D"gmail_extra"><div=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><br></div>
</div></div>

--000000000000569a5d056de62cbf--
