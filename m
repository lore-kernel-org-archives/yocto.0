Return-Path: <katutxakurra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 820CFE00B53; Thu,  6 Jul 2017 07:24:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (katutxakurra[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11C1FE00B1B
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 07:24:52 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id m84so4287275ita.0
	for <yocto@yoctoproject.org>; Thu, 06 Jul 2017 07:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9AcXmRj/OofRXVh+s80j/tO8HZMWw4NHw7MyzugPx/Q=;
	b=KrrVq5u7tW8JNVSWXjPeGcJCpKEheHmXOt+3CbvzK3e3oLSmD5TKu3zOLkSTiNf5xg
	sCIWzh1bQ057bFhiHYuRmTsSZfBLmTeZsyQau+RyK6H5lHT347ubxtuHfiPAOMwNpMUb
	S0PFvAWy9sN0DRx6emltSPkPcOyBYPjoT7lKu3XcELsH4Jz+mgxc3wPqwnO5mCS/0xee
	yi8BpC2iULXi40dbGEhHEzMNFOf/Bm/ZoKZDycIZ6kH5I9dEkk+fqDMk+SR8mU1YLZzq
	Fgf/Je4AsLAcB+kjtKKfBJnHimc2m1SFbJb3ToIlNaBjTfgB+g+uY0/SjI6AU34jZChn
	oAcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9AcXmRj/OofRXVh+s80j/tO8HZMWw4NHw7MyzugPx/Q=;
	b=dg0Gs1uIAqVe50XRIuw26pQ+4YaDehHn2bVZSOvHK3L8/UcxZiM8xjt+IRnXXAFrv1
	VJZu7cj4ZVK1PnupTFxJM+I6W9kmoZr8WVQ8jwgJJhGk0unHbm4MNBxueOFqHBZMMGoE
	y+76RP+gLfdIOxQvMuAcvdidOMVJmDEu5dIAg7H8MRJm0cX+hn+RpaWIj7BCiDIsSzoZ
	DF4UvpCIeOyaigyUWFFTLsC511XNmmsDzS0oJwErJcAr2ScaI7WWIsISxx4FSJAvkbZs
	3LeUFsjVy/7o+qIMci5dw1x9/BB5Ib87Vj/2zhWD2S8O1NrXF8CKh0aExo+pt7jjMOPD
	tB2w==
X-Gm-Message-State: AIVw112lq/swMPRc4CwwY8oGkcCMA6Mp87BF3CMUpnKEGLxWuOYBzX2w
	XSiXtI9L+FCnNe7uhrLnKaZVnLbblTzx
X-Received: by 10.36.73.131 with SMTP id e3mr22943073itd.0.1499351091939; Thu,
	06 Jul 2017 07:24:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.153.16 with HTTP; Thu, 6 Jul 2017 07:24:51 -0700 (PDT)
From: Katu Txakur <katutxakurra@gmail.com>
Date: Thu, 6 Jul 2017 15:24:51 +0100
Message-ID: <CAM1ZcoVWq8RDG+XucWe9bmnsJKQmSjGDFC+TmD6BjObBfX+dOA@mail.gmail.com>
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
X-List-Received-Date: Thu, 06 Jul 2017 14:24:55 -0000
Content-Type: multipart/alternative; boundary="001a113a984c3a8f160553a6e12e"

--001a113a984c3a8f160553a6e12e
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm upgrading a recipe that fetches the source code from Perforce.

The old recipe was:

SRC_URI = " \
  p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/path/perforce/...;module=local/path/relativeto/p4;label=${P4CHANGELIST}
\
  "

With the new version of /lib/bb/fetch2/perforce.py, I had to set P4PORT
outside SRC_URI, leaving the recipe with:

SRC_URI = " \
  p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;module=local/path/relativeto/p4;label=${P4CHANGELIST}
\
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

--001a113a984c3a8f160553a6e12e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I&#39;m upgradin=
g a recipe that fetches the source code from Perforce.<br><br>The old recip=
e was:<br><br>SRC_URI =3D &quot; \<br>=C2=A0 p4://${P4USER}:${P4PASSWD}:${P=
4HOST}:${P4PORT}@Depot/path/perforce/...;module=3Dlocal/path/relativeto/p4;=
label=3D${P4CHANGELIST} \<br>=C2=A0 &quot;<br><br>With the new version of /=
lib/bb/fetch2/perforce.py, I had to set P4PORT outside SRC_URI, leaving the=
 recipe with:<br><br>SRC_URI =3D &quot; \<br>=C2=A0 p4://${P4USER}:${P4PASS=
WD}@Depot/path/perforce/...;module=3Dlocal/path/relativeto/p4;label=3D${P4C=
HANGELIST} \<br>=C2=A0 &quot;<br><br></div>The Perforce fetcher kind of wor=
ks, but it seems to be ignoring the &quot;module&quot; and the &quot;label&=
quot; attributes. After reading the Python script I can see that after the =
&quot;@&quot;, only the substring before the first &quot;;&quot; is used.<b=
r><br></div>Is there a way to set module and label/changelist? I have sever=
al folders per recipe that I need to map to different subfolders and with t=
he current script some of the folders don&#39;t get fetched.<br><br></div><=
div>Thanks for your time.<br></div><div><br></div>Regards,<br></div>Katu<br=
></div>

--001a113a984c3a8f160553a6e12e--
