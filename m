Return-Path: <smennetrier@connected-labs.com>
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24284E013B7
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 01:45:50 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id o20so482154oag.27
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2013 01:45:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=UbLybG4vmYdx5exzmYRU4er8EunYkD4bOqBFjLEaUkY=;
	b=MPv6QJqeXf0/c7Kc9YrcXQchPvdHmtxF0OPDSteHEQn4cKStRZrxZ/xJR7rVh2hn2v
	wIRTgwsE3FPjUP0l/ZCf/tzcqZPG+4Ji7BLPfBGa528HyL6bDJ/9vJh+sL24Mvm3gW8k
	Yc3kAOo/UPmLOkbXV4tRS8UNpyF2cK2dqfGJvMVPoz7gvM2SmqQOGBk6akWb72+tiK3m
	4mDo7MW5x/wZD5C9hut3q4MuL5WS4/x3xEqKtyURgrKhX+2MqpQBvWoVNvH51EZjoypy
	437eVGwYqX5oeTLMSslIe4u5Cs9pOdSxCjOpmZ4oHXuYCfkreAcfdn3d+opQw9qraXm5
	hX4Q==
X-Gm-Message-State: ALoCoQli5VUxhWzRt229VTe2N+yT7jo6Wex1Qvm+NRxBcNzXvLsXOF4a2vLef0cV4QOb9gBmqsbl
MIME-Version: 1.0
X-Received: by 10.60.44.141 with SMTP id e13mr140777oem.84.1382517949755; Wed,
	23 Oct 2013 01:45:49 -0700 (PDT)
Received: by 10.182.195.105 with HTTP; Wed, 23 Oct 2013 01:45:49 -0700 (PDT)
X-Originating-IP: [94.103.137.126]
Date: Wed, 23 Oct 2013 10:45:49 +0200
Message-ID: <CAKCtLPzQKr7DHNR-y_1FRm8EiYSJxczXnSrVX4Ou=LcaxnZWBg@mail.gmail.com>
From: Sebastien Mennetrier <smennetrier@connected-labs.com>
To: yocto@yoctoproject.org
Subject: Issue with package_rpm
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
X-List-Received-Date: Wed, 23 Oct 2013 08:45:54 -0000
Content-Type: multipart/alternative; boundary=001a113335904a835f04e9648b4b

--001a113335904a835f04e9648b4b
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I try to cross-compile and install rubygems and the gems contain some
directories and files named "%name...".

To create the rpm package, a spec file that contains the list of all files
and directories that must be in the rpm package is generated in do_package.

The rpm process replace all the "%name" in the spec file by the name of the
package. So the package process try to include some file and directory that
doesn't exist.

How can I resolve this issue ? Is it a bug in package_rpm.bbclass ?

Best regards,

Seb

--001a113335904a835f04e9648b4b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I try to cross-compile and inst=
all rubygems and the gems contain some directories and files named &quot;%n=
ame...&quot;.</div><div><br></div><div>To create the rpm package, a spec fi=
le that contains the list of all files and directories that must be in the =
rpm package is generated in do_package.</div>
<div><br></div><div>The rpm process replace all the &quot;%name&quot; in th=
e spec file by the name of the package. So the package process try to inclu=
de some file and directory that doesn&#39;t exist.</div><div><br></div>
<div>How can I resolve this issue ? Is it a bug in package_rpm.bbclass ?</d=
iv><div><br></div><div>Best regards,</div><div><br></div><div>Seb</div></di=
v>

--001a113335904a835f04e9648b4b--
