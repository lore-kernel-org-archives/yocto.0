Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E6C7E00B9C; Fri, 28 Jun 2019 09:44:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 518E3E00931
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 09:44:53 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id k8so11547581eds.7
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 09:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FzkkMeQFxE+6VCxmq4kIPaOtocNEKmkCv5wezFd8VDs=;
	b=kst6EbZq91PEyEfMSu9V4Y83bpXQshiIlDMZLVNrODfR458gSeSwfsl/OeCfYokZ78
	3L0ALuQXMvJjFD+iNFF8CALhczc2YEImONDLugP7d3fxtpqaIr0g6fqHc800U2zMo+82
	87nqhuvHgEaATFzZjlhhOu2uymcF91uOy8Z33tK2t3W7bFssvzOhFrCovM2MlRnbhA/5
	wAcz9kUeVpc7w0rKbc2Vozs9urGerRYQFMSvhO7EqrhkOUxnOMKsyWJ+XY/vNGcSMMq6
	Ev0H+zbW39PSH/XncOt2nwsUX+ART7yfzUK927bPBx0cZ+tQ3bRtXKq5UJIjqxirsPph
	5A4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FzkkMeQFxE+6VCxmq4kIPaOtocNEKmkCv5wezFd8VDs=;
	b=NcrlJ8bUIxIWujPkMrpdXWEG0kt2ywzMEcChBUhOWd8vAFQ9nylt1qRlbMzPB5XgO9
	RSs4PVJXyWBvLj7JVUIeogf8l4ag7VNjJUNUHhr6U9fh288IMU9kD/i2W1QtkwfChYYi
	v0hVYSjR8UILbWEnUV/ryHfqgwfnGTQLAEjTtZ2DqpwhH28ehG/mcUwqOvghJcMUf//4
	yO9sabeBIadw2ntpqQH5185mP6diM6foduNl3fJ3HxetNbqBgTAXCAg7Ia7uleYeoCMJ
	5125Xx1LNoQ4NCXNI5qEtGBPEvpW4Jb+pYO7kncW6s6tAHfqOhlSlCvJIS7L0Uuk+/f9
	4cOQ==
X-Gm-Message-State: APjAAAWbZlnidAPpEpm5/bPO5Wiygkv9h3yEk9qwVZJcT9Szw0PhuQHs
	vNDpJj/G8oS/VG7UvgCg5wEmO7oD2CQmZ0vQtOUnOP2/
X-Google-Smtp-Source: APXvYqzu3eClr0FGoVdsnEjGr2UOfNoiAgUIAFr49/rLHQV4T1TbllucWzu3AaE2FDbhJ1wBdRgBdJbQhMgWffKkn1U=
X-Received: by 2002:a17:906:7e58:: with SMTP id
	z24mr9742292ejr.64.1561740291689; 
	Fri, 28 Jun 2019 09:44:51 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Biver <aaron.biver@gmail.com>
Date: Fri, 28 Jun 2019 12:44:40 -0400
Message-ID: <CAMd7AX9SH60WPAhR87p=Za17rDOCf0CMsp3S7LFbgrT9Y+c2RQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Syntax for zero-padding a number in a recipe?
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
X-List-Received-Date: Fri, 28 Jun 2019 16:44:54 -0000
Content-Type: multipart/alternative; boundary="000000000000515308058c64ff78"

--000000000000515308058c64ff78
Content-Type: text/plain; charset="UTF-8"

Is there such a thing as zero padding a number in a recipe (or vice versa?
I'd be just as happy starting with a zero-padded number, and converting it
to non-zero-padded.
The crux of the dilemma is that I must have zero-padding for file-naming,
but I CAN'T have zero padding in these numbers when I pass them to the C
code (or the C code treats them as octal).

I'd like to start with:
VERSION_MAJOR="1"
VERSION_MINOR="19"

And turn this into "01" and "19" for purposes of naming the output file
from the recipe.

I've tried the bash-style printf -v, but the recipe kicks the printf lines
out with a parse error.

VERSION_MAJOR="01"
VERSION_MINOR="19"

VERSION_MAJOR_STR=""
VERSION_MINOR_STR=""

printf -v VERSION_MAJOR_STR "%02d" VERSION_MAJOR
printf -v VERSION_MINOR_STR "%02d" VERSION_MINOR

--000000000000515308058c64ff78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Is there such a thing as zero padding a number in a r=
ecipe (or vice versa? I&#39;d be just as happy starting with a zero-padded =
number, and converting it to non-zero-padded. <br></div><div>The crux of th=
e dilemma is that I must have zero-padding for file-naming, but I CAN&#39;T=
 have zero padding in these numbers when I pass them to the C code (or the =
C code treats them as octal).<br></div><div><br></div><div>I&#39;d like to =
start with:</div>VERSION_MAJOR=3D&quot;1&quot;<br>VERSION_MINOR=3D&quot;19&=
quot;<br><br><div>And turn this into &quot;01&quot; and &quot;19&quot; for =
purposes of naming the output file from the recipe.</div><br>I&#39;ve tried=
 the bash-style printf -v, but the recipe kicks the printf lines out with a=
 parse error.<br><br>VERSION_MAJOR=3D&quot;01&quot;<br>VERSION_MINOR=3D&quo=
t;19&quot;<br><br>VERSION_MAJOR_STR=3D&quot;&quot;<br>VERSION_MINOR_STR=3D&=
quot;&quot;<br><br>printf -v VERSION_MAJOR_STR &quot;%02d&quot; VERSION_MAJ=
OR<br>printf -v VERSION_MINOR_STR &quot;%02d&quot; VERSION_MINOR<br></div>

--000000000000515308058c64ff78--
