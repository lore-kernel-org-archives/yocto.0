Return-Path: <niam.niam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 399FAE00EC2; Sat, 16 Apr 2016 05:58:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (milinevskyy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 377E1E00C89
	for <yocto@yoctoproject.org>; Sat, 16 Apr 2016 05:58:16 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id a140so63669694wma.0
	for <yocto@yoctoproject.org>; Sat, 16 Apr 2016 05:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=qOSzhOu+nKU/7oHhsM+twA6PJ8eJOg7IYwa2b+9xOgg=;
	b=mn6aq1AQyQcm44WZNSnXaUGV00BRgbPc1VemsrUoxMhA2Q97Urrk1M4CvOmTmgJ+Yw
	Er0NxabH0bfX26gow8HY4eRfKMUGs/K9Ve6vb6E97n89LdgBLQkZZIYxESA4r3RCYI4L
	gQaFR7VwguNeKNd/BJewikord4rUww2a7yX+P9mQHFk5F5knGS6Uta2yO1tRUnCp3LRv
	01EDQ9ymS4C4CwkIjdZj59SJJInB4r7HcwYhHw8eicON+q6YPm+G2J1JWaNse6OWgYbp
	hljkz7a6OxdALDgKS80qaMmRMf0kvnbKcImk1ismbKbJEMpptPXFuzFHphF1KbJA93L4
	S9Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=qOSzhOu+nKU/7oHhsM+twA6PJ8eJOg7IYwa2b+9xOgg=;
	b=fAAHlTx32VjpR1H0a8V2nGDJ2ZPdGsqkN7R8DJCjSwRZIiGLK8D3TlPO2OKnAJ9c6o
	8hXRLYf8o8ITvn9NfSEdg6WS9al2vrvUtgrezLzX3ZO+Ugw0rS+LW87Q0hY7QCUXaVVA
	j/lH51ogHdBv16qzcoSxUR5/+sDYL66Z/OX/teHs9cabzhMkuZX6LGjz/G1I+L1q0uY/
	pgJ+YFAZVq4XWdhDpCYvhm5btPsXltll9kCyEYkrBmpxoBCEPy133vGSgxCGgK+Yp1dR
	S8MEg93W02J5J1NZHKjI39g3ICalDykNaP+Kf6LM7ilIG+cbQy7p3A6euQ+RHm3ufI3K
	5mUg==
X-Gm-Message-State: AOPr4FUfBTKNjbb5E+eRpf73tABWHNylmgnEpaO7eypbF+ctrUTSM0ynCpPaoEyHq3qhRKiqXko+B3PVavw6Xw==
X-Received: by 10.195.13.135 with SMTP id ey7mr26680710wjd.161.1460811496188; 
	Sat, 16 Apr 2016 05:58:16 -0700 (PDT)
MIME-Version: 1.0
Sender: niam.niam@gmail.com
Received: by 10.194.19.97 with HTTP; Sat, 16 Apr 2016 05:57:56 -0700 (PDT)
From: Dmytro Milinevskyy <milinevskyy@gmail.com>
Date: Sat, 16 Apr 2016 14:57:56 +0200
X-Google-Sender-Auth: g0zd-kMm1fq8pC1rmkpt2FDB6jE
Message-ID: <CAOUdcc_NJQpH4GMO47D_0S3db57L7VizZ5=nxU7U3O6N-MXsCg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: RPM bogus signature
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
X-List-Received-Date: Sat, 16 Apr 2016 12:58:18 -0000
Content-Type: multipart/alternative; boundary=047d7bb04dc45072e1053099aee0

--047d7bb04dc45072e1053099aee0
Content-Type: text/plain; charset=UTF-8

Hello,

currently I'm trying to enforce rpm signature verification on the target
device and get weird bogus signature of the RPM packages when the signature
is not enabled in the configuration.
The main issue that this signature is considered as valid by the RPM 5.4.14
which is used by Yocto. And thus it is "correctly" installed by "smart"
packaging system on the target.

For example here 2 packages built w/o signing. Both packages have different
keys and RPM is not complaining:
>tmp/sysroots/x86_64-linux/usr/bin/rpm -Kv
./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
    Header V4 DSA signature: OK, key ID bd8f688a
    Header SHA1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)
    MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)
./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
    Header V4 DSA signature: OK, key ID bc6abdd3
    Header SHA1 digest: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)
    MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)

Nevertheless the host RPM(rpm4 from ubuntu) is correctly identifying that
the signature is invalid:
>rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
    Header V4 DSA/SHA1 Signature, key ID bd8f688a: NOKEY
    Header SHA1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)
    MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)
./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
    Header V4 DSA/SHA1 Signature, key ID bc6abdd3: NOKEY
    Header SHA1 digest: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)
    MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)

Following is an output of properly signed packages. You may see that the
keys are valid(you can also check the pub key on MIT key storage):
rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
    Header V4 RSA/SHA1 Signature, key ID 5a906f4c: OK
    Header SHA1 digest: OK (e82b83bc3a4713d36548a3ea6b7c0d3c3dc35f1f)
    MD5 digest: OK (e9bfa1fc6a4ae90e84851bfd4583ec29)
./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
    Header V4 RSA/SHA1 Signature, key ID 5a906f4c: OK
    Header SHA1 digest: OK (d6925400698be829e08bc5013fd28d2c829a2600)
    MD5 digest: OK (427f42d79b83e314f741ff73a672c5dc)


Host RPM version
>rpm --version
RPM version 4.11.2

Yocto RPM version
>tmp/sysroots/x86_64-linux/usr/bin/rpm --version
rpm (RPM) 5.4.14

Yocto version: jethro (1a52eceaa5df89914b6a711defdcf0046e74c7f6)

Best regards,
Dimitri

--047d7bb04dc45072e1053099aee0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>currently I&#39;m try=
ing to enforce rpm signature verification on the target device and get weir=
d bogus signature of the RPM packages when the signature is not enabled in =
the configuration.</div><div>The main issue that this signature is consider=
ed as valid by the RPM 5.4.14 which is used by Yocto. And thus it is &quot;=
correctly&quot; installed by &quot;smart&quot; packaging system on the targ=
et.</div><div><br></div><div>For example here 2 packages built w/o signing.=
 Both packages have different keys and RPM is not complaining:</div><div>&g=
t;tmp/sysroots/x86_64-linux/usr/bin/rpm -Kv ./tmp/deploy/rpm/all/os-release=
-1.0-r0.all.rpm ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm</div><div>./tm=
p/deploy/rpm/all/os-release-1.0-r0.all.rpm:</div><div>=C2=A0 =C2=A0 Header =
V4 DSA signature: OK, key ID bd8f688a</div><div>=C2=A0 =C2=A0 Header SHA1 d=
igest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)</div><div>=C2=A0 =C2=
=A0 MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)</div><div>./tmp/deplo=
y/rpm/all/tzdata-2016a-r0.all.rpm:</div><div>=C2=A0 =C2=A0 Header V4 DSA si=
gnature: OK, key ID bc6abdd3</div><div>=C2=A0 =C2=A0 Header SHA1 digest: OK=
 (e95dc6b40965224ae443460117fe2ada4f855b2d)</div><div>=C2=A0 =C2=A0 MD5 dig=
est: OK (1dda4ae1673ab96dd9edbdc423df29ac)</div><div><br></div><div>Neverth=
eless the host RPM(rpm4 from ubuntu) is correctly identifying that the sign=
ature is invalid:</div><div>&gt;rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0=
-r0.all.rpm ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm</div><div>./tmp/de=
ploy/rpm/all/os-release-1.0-r0.all.rpm:</div><div>=C2=A0 =C2=A0 Header V4 D=
SA/SHA1 Signature, key ID bd8f688a: NOKEY</div><div>=C2=A0 =C2=A0 Header SH=
A1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)</div><div>=C2=A0 =
=C2=A0 MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)</div><div>./tmp/de=
ploy/rpm/all/tzdata-2016a-r0.all.rpm:</div><div>=C2=A0 =C2=A0 Header V4 DSA=
/SHA1 Signature, key ID bc6abdd3: NOKEY</div><div>=C2=A0 =C2=A0 Header SHA1=
 digest: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)</div><div>=C2=A0 =C2=
=A0 MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)</div><div><br></div><=
div>Following is an output of properly signed packages. You may see that th=
e keys are valid(you can also check the pub key on MIT key storage):</div><=
div>rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm ./tmp/deploy/rpm=
/all/tzdata-2016a-r0.all.rpm</div><div>./tmp/deploy/rpm/all/os-release-1.0-=
r0.all.rpm:</div><div>=C2=A0 =C2=A0 Header V4 RSA/SHA1 Signature, key ID 5a=
906f4c: OK</div><div>=C2=A0 =C2=A0 Header SHA1 digest: OK (e82b83bc3a4713d3=
6548a3ea6b7c0d3c3dc35f1f)</div><div>=C2=A0 =C2=A0 MD5 digest: OK (e9bfa1fc6=
a4ae90e84851bfd4583ec29)</div><div>./tmp/deploy/rpm/all/tzdata-2016a-r0.all=
.rpm:</div><div>=C2=A0 =C2=A0 Header V4 RSA/SHA1 Signature, key ID 5a906f4c=
: OK</div><div>=C2=A0 =C2=A0 Header SHA1 digest: OK (d6925400698be829e08bc5=
013fd28d2c829a2600)</div><div>=C2=A0 =C2=A0 MD5 digest: OK (427f42d79b83e31=
4f741ff73a672c5dc)</div><div><br></div><div><br></div><div>Host RPM version=
</div><div>&gt;rpm --version</div><div>RPM version 4.11.2</div><div><br></d=
iv><div>Yocto RPM version</div><div>&gt;tmp/sysroots/x86_64-linux/usr/bin/r=
pm --version</div><div>rpm (RPM) 5.4.14</div><div><br></div><div>Yocto vers=
ion: jethro (1a52eceaa5df89914b6a711defdcf0046e74c7f6)</div><div><br></div>=
<div>Best regards,</div><div>Dimitri</div></div>

--047d7bb04dc45072e1053099aee0--
