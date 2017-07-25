Return-Path: <katutxakurra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 396A3E00C2B; Tue, 25 Jul 2017 02:05:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_NONELEMENT_30_40, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (katutxakurra[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 HTML_NONELEMENT_30_40 BODY: 30% to 40% of HTML elements are
	*      non-standard
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B02FDE00C1C
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 02:05:32 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id l7so53368698iof.1
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 02:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kh3Zzgt5lFrLa4GBlogSofpTiGJ7MX4DdrV/VndUWAs=;
	b=OOTE3XY/tpPjqXX+fLV0UGvFMdvBV3sYRUyu86HqXNMrSwWRqKy6/OqOPMBVGFfwEg
	dplkUTAmnWVft1In4QJ5ZdePbWgucmxaQsva0TnpETIbGHFitT0NUpjQ6oN+B76Cio9v
	Qzb8PyrQXNT4jfyXgfu+eSzUKEl9MbiCmHquF0WHlhA+1Z8E9WM3jw/2wW5mt2vS1tAW
	E6mrVZiTVFBUWvOcQgdxjTVMrxi7Z7DcLIhJ0Wr0Ejr+5J08T5tbg0l42UUnqkI0/hhp
	B40hJWEOsTNbQCUj/SxEqtbbCFreNJbEGThLEFmxnaMqdVpuefLHJV8IlcIwyZV5mLir
	dbFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kh3Zzgt5lFrLa4GBlogSofpTiGJ7MX4DdrV/VndUWAs=;
	b=VuGzGYrLRq83MdhBCj5ZNcfoowVsopxg/80Zy5LhMfAlDkqIzPu/N8YzIDTgZxJ/iG
	TLHxNd6SdjAVvMQiz5CcWNg5Gk7OcxLGQ0Pyq9/Cgv48WEXMkbCznrp6jHBg8ENcUVG/
	6/mLZ6l3CkwNbCZlnULNdGbA+Wn8ul5TiaUkIjTB9VYnDAph2ONq6Lp1nwAT3DdLkPs5
	xwCo/tuuSpaYFTjFgtyXeulTyWILgmGZ7Sqe5CenzqcfNAsq2wKaKzWxUiZx8dxKfci3
	96+v8fFEeWFVXqNZW6nYQ2hVPQKBVb6PD0UEXbfK8T6tE6Q+IzCB2HOkHJj9DvITIRnt
	D+Kw==
X-Gm-Message-State: AIVw111l7mlEcPohYNFEmofofJ176mRxuWWWCRvNcvxgP9ntMD1wx9sM
	wlWKnkpTY+uT8Jw7RETKuVkZOOY8gENw
X-Received: by 10.107.133.151 with SMTP id p23mr20162340ioi.328.1500973531489; 
	Tue, 25 Jul 2017 02:05:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.111.194 with HTTP; Tue, 25 Jul 2017 02:05:31 -0700 (PDT)
From: Katu Txakur <katutxakurra@gmail.com>
Date: Tue, 25 Jul 2017 10:05:31 +0100
Message-ID: <CAM1ZcoVg_NuFbLkAHCRJmXAhX7g9EA04h+9NYmWb9QAJWCcnKA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Perforce fetcher ignores module and label
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
X-List-Received-Date: Tue, 25 Jul 2017 09:05:33 -0000
Content-Type: multipart/alternative; boundary="001a113ec2ac296d35055520a216"

--001a113ec2ac296d35055520a216
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm upgrading a recipe that fetches the source code from Perforce.

The old recipe was:

SRC_URI = " \
  p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/path/
perforce/...;module=local/path/relativeto/p4;label=${P4CHANGELIST} \
  "

With the new version of /lib/bb/fetch2/perforce.py, I had to set P4PORT
outside SRC_URI, leaving the recipe with:

SRC_URI = " \
  p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;
module=local/path/relativeto/p4;label=${P4CHANGELIST} \
  "

The Perforce fetcher kind of works, but it seems to be ignoring the
"module" and the "label" attributes. After reading the Python script I can
see that after the "@", only the substring before the first ";" is used.

Is there a way to set module and label/changelist? I have several folders
per recipe that I need to map to different subfolders and with the current
script some of the folders don't get fetched.

Thanks for your time.

Regards,
Katu

--001a113ec2ac296d35055520a216
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I&#39;m upgradin=
g a recipe that fetches the source code from Perforce.<br><br>The old recip=
e was:<br><br>SRC_URI =3D &quot; \<br>=C2=A0 p4://${P4USER}:${P4PASSWD}:${<=
wbr>P4HOST}:${P4PORT}@Depot/path/<wbr>perforce/...;module=3Dlocal/<wbr>path=
/relativeto/p4;label=3D${<wbr>P4CHANGELIST} \<br>=C2=A0 &quot;<br><br>With =
the new version of /lib/bb/fetch2/perforce.py, I had to set P4PORT outside =
SRC_URI, leaving the recipe with:<br><br>SRC_URI =3D &quot; \<br>=C2=A0 p4:=
//${P4USER}:${P4PASSWD}@<wbr>Depot/path/perforce/...;<wbr>module=3Dlocal/pa=
th/relativeto/<wbr>p4;label=3D${P4CHANGELIST} \<br>=C2=A0 &quot;<br><br></d=
iv>The
 Perforce fetcher kind of works, but it seems to be ignoring the=20
&quot;module&quot; and the &quot;label&quot; attributes. After reading the =
Python script I=20
can see that after the &quot;@&quot;, only the substring before the first &=
quot;;&quot; is=20
used.<br><br></div>Is there a way to set module and label/changelist? I=20
have several folders per recipe that I need to map to different=20
subfolders and with the current script some of the folders don&#39;t get=20
fetched.<br><br></div><div>Thanks for your time.<br></div><div><br></div>Re=
gards,<br></div>Katu</div>

--001a113ec2ac296d35055520a216--
