Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70D72E014B5
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 09:36:40 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id z10so1683112pdj.16
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 09:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=4WGDYQMpFCT8/qgVvSqCGPb5tesRv2NfzUb6DJqL8Jw=;
	b=ve+m7aqzOmjuA6XaluUHVOLO0K8i87P1EPhFf9H03JfC5mXW45fDnHjQvlbN6PV0uU
	O8NYrC1Y6vpReO3s+6pfuV1Wp6lZhDSPK+Gh1qUOKLv40jbYR6ITQcXguXZXMzorcpgP
	2VVqP7iN0tP3DPZHBvzma82vJsjCh9/X+uHqS21AWzpG0CoWBtJYveVVTmSPFMxE365D
	ZIFIyZlKiX2wLzztsz4uQkz3UinG+0yy0dE/NAXL/VQ3Y3ePP6/LAof/fAn1kJpjoQUQ
	eMIZ1DbZAiSwWHs6I/HfbGMe8/IpaMcE1cWueJiMNxVOfyXjGNAr6SEbz46owC1i5xlg
	RHkQ==
X-Received: by 10.66.102.33 with SMTP id fl1mr14250436pab.52.1366303000270;
	Thu, 18 Apr 2013 09:36:40 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.101])
	by mx.google.com with ESMTPS id g8sm11542099pae.7.2013.04.18.09.36.38
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 18 Apr 2013 09:36:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <76557A7C-1A9C-4A40-9E31-B8F3EDE828F9@gmail.com>
Date: Thu, 18 Apr 2013 20:36:37 +0400
Message-Id: <FFFC0574-F5E4-4239-AECA-A4F6AF9BDAE9@gmail.com>
References: <9CEFD538-1DCB-4431-A89F-18DC00A7C9A4@gmail.com>
	<CAHUNapQakOn5n3=fAHT7nBCYLU1fAiVNm52cLEn4rORGuXaFRg@mail.gmail.com>
	<76557A7C-1A9C-4A40-9E31-B8F3EDE828F9@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1503)
Subject: Re: [poky] bash: oe-init-build-env: line 33: syntax error near unexpected token `elif'
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
X-List-Received-Date: Thu, 18 Apr 2013 16:36:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Apr 18, 2013, at 8:12 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:

>=20
> On Apr 18, 2013, at 7:58 PM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>=20
>> On Thu, Apr 18, 2013 at 11:37 AM, Elvis Dowson =
<elvis.dowson@gmail.com> wrote:
>>> =
http://ares/gitweb/?p=3Dtools/poky.git;a=3Dblobdiff;f=3Doe-init-build-env;=
h=3D68af7b5193b73627cd6ebf6196adfa685a787c38;hp=3D67eddcd295bd9d1adac21fc4=
e97506fca05f4bfa;hb=3D813127247a1100b1abe179dfba25795560eac864;hpb=3Da468b=
0d5579148771da716eaf357e5d45fc3211c
>>=20
>> Do you have a better link?
>=20
> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/oe-init-build-env?id=
=3D813127247a1100b1abe179dfba25795560eac864
>=20
> I reverted the commit, but the error still persisted. It's something =
else, probably due to a recent update to Ubuntu 12.10. I tried reverting =
to known commit ids but all of them don't work.
>=20
> My shell is correctly configured to use bash instead of dash.
>=20
> When I ran the debug mode for the bash shell, I found out that the=20
>=20
> : command not found
> : command not found
>=20
> errors were due to the new lines on line 2 and line 20. Deleting the =
new lines made the : command not found errors go away, but I get the =
following error with the older commit
>=20
> bash: ./oe-init-build-env: line 45: syntax error: unexpected end of =
file
>=20
> and the following error with the current master
>=20
> bash: ./oe-init-build-env: line 33: syntax error near unexpected token =
`elif'
> 'ash: ./oe-init-build-env: line 33: `   elif [ -n "$ZSH_NAME" ]; then
>=20
> Man, this is so un-expected!! :-)

Okay, false alarm, sorry about that. I noticed that when I pull the =
latest updates, something went wrong and there were a lot of modified =
files after the update in red. I did a git clean -df and git reset =
--hard, and it solved the problem. Don't know how that happened though, =
but problem fixed by resetting the git repo and cleaning all the dirty =
files.

Best regards,

Elvis Dowson=

