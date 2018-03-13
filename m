Return-Path: <tiffang@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78274E00E55; Tue, 13 Mar 2018 09:28:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tiffang[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C330E00A75
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 09:28:03 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id v10so802542iob.6
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 09:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=91hKJCUfxS2DI0mie8CLQ2oh6DnXVaqrkmW4QkhPrl4=;
	b=QJJ1hvBTlhO6/QJa9BB+31UbJ/XG+O7suoGCqygdB89kjXeRAyilBi2ia5TAFxj4dD
	uSUcSx8E9wVA6OkTUtO/SvxEMaxxMeMvD0UXrSbfxz2dbU1CoRz2h3JJfx4zyERv3mMZ
	8si7gudVB66caHQN2vbabiXDuAMiRKCOsdljGrXi5TzSyuegDHFH1R1nQMgVDEwqCJy+
	K8H6Eux7guiggyFwX92D5si9lw/yK4SrobrURqgcvgtIh7Sdnm4YBFymw3D0BzLh3Vtp
	JCIcLKjU1BtgdR/1p/AprGj7PXgu5lhnHx8m9lbpzSAcaDqfHXa019HRpxFf7u0y1jrQ
	jVbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=91hKJCUfxS2DI0mie8CLQ2oh6DnXVaqrkmW4QkhPrl4=;
	b=Zbk3UrUnXSqVcL3dGDdvRIMmoML7tR5MufvuUL9UfBkSiF5Zgiww0lnIr4RtFKVRJh
	aonPEt9KS5j7AOSjeJg4wzDh9Y/VQX3CdtUHkJJ1beNF40m57FzFQjWkVoBcuq9q+Awa
	Xi0okLKcJ1ACtzPGFogdUFG1g0dUUJFzFpB8d16qXLOpXeDVzTZxmOHrJehFx7Hb87M9
	UgPhFHx8WgjQr4Ww0/C4AMQ5dV87WTZ9XkJxbWvyzDmO1ileqd3rogjSYu8v2zz65n2G
	5P/Tfp/39S9otr4hS9YlXiOu24sOYJqg+FCE+8UYS8NKILFci5XzHUbQORO8dwrYx1qV
	0Izw==
X-Gm-Message-State: AElRT7ETRqZwh8ZurdfHh0DW7sghIjirI5iBbrJ2j8ITDAXzQo2+llu0
	REK15p9o+oghuRGq5sl5jDEAJGtPu5wuJv1ehw==
X-Google-Smtp-Source: AG47ELsrT+bJJXyMtymfigK360nftO+mnCS2HSOmMFkXtLDHuPnyt+rSx5XU0ZIQ2pNJITsEsG9lUcoR7Rxex1K3Fn4=
X-Received: by 10.107.18.162 with SMTP id 34mr1413554ios.168.1520958483149;
	Tue, 13 Mar 2018 09:28:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.31.2 with HTTP; Tue, 13 Mar 2018 09:28:02 -0700 (PDT)
From: ikjn <tiffang@gmail.com>
Date: Wed, 14 Mar 2018 01:28:02 +0900
Message-ID: <CAO80zYuPGBh0syB4s_G6nrMgD7Ac9OePa=uM=8pPM6YhVnrGsQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 14 Mar 2018 08:49:55 -0700
Subject: How can I check "shared-library-to-package mapping"
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
X-List-Received-Date: Tue, 13 Mar 2018 16:28:04 -0000
Content-Type: multipart/alternative; boundary="001a113f62161b463d05674dbe27"

--001a113f62161b463d05674dbe27
Content-Type: text/plain; charset="UTF-8"

Hi.

My recipe 'A' installs pre-built shared libraries, but I get file_rdeps
error on
'B' recipe's package_qa task, which has runtime dependency on A's so files.

I believed that bitbake automatically creates RDEPENDS_B += "A" regarding
"shared-library-to-package mapping" [1] . so I didn't declare RDEPENDS on B
recipe.

Can anybody describe the detailed process of "so/package mapping"?
Should I look into insane.bbclass?

Thanks.

[1]  https://www.yoctoproject.org/docs/2.2/ref-manual/ref-
manual.html#automatically-added-runtime-dependencies

--001a113f62161b463d05674dbe27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi.<div><br></div><div>My recipe &#39;A&#39; installs pre-=
built shared libraries, but I get file_rdeps error on=C2=A0<div>&#39;B&#39;=
 recipe&#39;s package_qa task, which has runtime dependency on A&#39;s so f=
iles.</div><div><br></div><div>I believed that bitbake automatically create=
s RDEPENDS_B +=3D &quot;A&quot; regarding &quot;shared-library-to-package m=
apping&quot; [1] . so I didn&#39;t declare RDEPENDS on B recipe.</div><div>=
<br></div><div>Can anybody describe the detailed process of &quot;so/packag=
e mapping&quot;?</div><div>Should I look into insane.bbclass?</div><div><br=
></div><div>Thanks.</div><div><br></div><div>[1]=C2=A0 <a href=3D"https://w=
ww.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#automatically-added=
-runtime-dependencies" target=3D"_blank">https://www.yoctoproject.org/<wbr>=
docs/2.2/ref-manual/ref-<wbr>manual.html#automatically-<wbr>added-runtime-d=
ependencies</a></div></div></div>

--001a113f62161b463d05674dbe27--
