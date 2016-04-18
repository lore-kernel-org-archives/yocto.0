Return-Path: <niam.niam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CBE4E00EBA; Mon, 18 Apr 2016 04:54:46 -0700 (PDT)
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
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B1BCE00931
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 04:54:42 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id a140so116261752wma.0
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 04:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to; bh=fDIQO6jvfpbJgBqnKz5KSx8CVbG3qMlH1aOHOl5JqC4=;
	b=CoF7j8ztKVREsT/9VXe1dIZ5AlgVEcuNu1n5csD2Byu1TWB4NnckQV9leWbtJr1L3c
	YiD+bipeQmUiuAMU61IvBqMUQ3IWoj1fVEpRbp3cpjTGB73r05s6WEhDKDV+qP+7M8S9
	PZLprAtWTZ92M1RJpYVAbTZ7x8jkdPs1Eud/AtTIZuBkSTfM8OuzeyKs/90ALOAyacIo
	/6NhR1e+9+2Sse3DqK5Z4dlXSToZbXTEJjzF8qv/I16KdFcbw42gWReu/0H14vHe0t+B
	qC+j6dKNV1cIPJvMnTEyR9NLCwGoZLWiH/OUqnsALU+dHrWw7whnugUTaYt3kQ5ysoCr
	SpcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to;
	bh=fDIQO6jvfpbJgBqnKz5KSx8CVbG3qMlH1aOHOl5JqC4=;
	b=hmWZ1JtiwSOsxBBEZUBFVkdDqQpFlzGw09YrmriSA8UUtrw63gPm4D/8kNlaX3EgQP
	Esgp/m560ktKO1Qkhd3uNNqHw7VUy2eupSb4GimLuowaSKo+qOD8bJna5XeauNocataS
	uhrQ4SDjNyJKTm7fsHi5ZBlqOc8MZljCanVsW4N7qxLkx7F6xiTaobAK2hGr/PKhF24r
	eYMEyQyQ4dMxUYSIHBRmdHts+BoN83s1jA5MkZndK77Rdqoin6qhHyLAxp56ftJLM+Q6
	wekZJOwdqybCdwonQj2rFP/fKt8Q4j4/EMmjD3ZPIRCmvETe8klDHjjwOtR90Qyx6PRJ
	AIpQ==
X-Gm-Message-State: AOPr4FVY7QbMnwklGO3PYC8TTNpWB+/pB8HyInqbB3i5mVDXm58TDzH+SmrMO4mx2kMCC17kJoDZPqDdP1CT6g==
X-Received: by 10.28.223.136 with SMTP id w130mr13921968wmg.4.1460980481347;
	Mon, 18 Apr 2016 04:54:41 -0700 (PDT)
MIME-Version: 1.0
Sender: niam.niam@gmail.com
Received: by 10.194.19.97 with HTTP; Mon, 18 Apr 2016 04:54:21 -0700 (PDT)
In-Reply-To: <CAOUdcc_NJQpH4GMO47D_0S3db57L7VizZ5=nxU7U3O6N-MXsCg@mail.gmail.com>
References: <CAOUdcc_NJQpH4GMO47D_0S3db57L7VizZ5=nxU7U3O6N-MXsCg@mail.gmail.com>
From: Dmytro Milinevskyy <milinevskyy@gmail.com>
Date: Mon, 18 Apr 2016 13:54:21 +0200
X-Google-Sender-Auth: HHgMtOJJ_-y4orTqSrukA2yfm7g
Message-ID: <CAOUdcc-x_vbB+g+hsgPL3b_v8RtbLOn85HrcVX8tPV=EcM5hNg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: RPM bogus signature
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
X-List-Received-Date: Mon, 18 Apr 2016 11:54:46 -0000
Content-Type: multipart/alternative; boundary=001a114b19249d55fe0530c10615

--001a114b19249d55fe0530c10615
Content-Type: text/plain; charset=UTF-8

Hi,

I've found the culprit.
RPM5 does package auto-signing. Itself it's not a big deal but the problem
is that it also considers that package is valid if the pubkey is present in
the RPM header.
This is an extremely severe security issue - any "signed" package can be
installed on the target even if the public key is not installed in the
local RPM DB.

I would consider to either switch to RPM4 or just disable this "feature" in
RPM5.
BTW, what's purpose of using RPM5 in Yocto? The gross distros(SuSe, Fedora,
etc) still successfully use RPM4. This means that it is exhaustively
verified.

Best regards,
Dimitri

On Sat, Apr 16, 2016 at 2:57 PM, Dmytro Milinevskyy <milinevskyy@gmail.com>
wrote:

> Hello,
>
> currently I'm trying to enforce rpm signature verification on the target
> device and get weird bogus signature of the RPM packages when the signature
> is not enabled in the configuration.
> The main issue that this signature is considered as valid by the RPM
> 5.4.14 which is used by Yocto. And thus it is "correctly" installed by
> "smart" packaging system on the target.
>
> For example here 2 packages built w/o signing. Both packages have
> different keys and RPM is not complaining:
> >tmp/sysroots/x86_64-linux/usr/bin/rpm -Kv
> ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
> ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
> ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
>     Header V4 DSA signature: OK, key ID bd8f688a
>     Header SHA1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)
>     MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)
> ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
>     Header V4 DSA signature: OK, key ID bc6abdd3
>     Header SHA1 digest: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)
>     MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)
>
> Nevertheless the host RPM(rpm4 from ubuntu) is correctly identifying that
> the signature is invalid:
> >rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
> ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
> ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
>     Header V4 DSA/SHA1 Signature, key ID bd8f688a: NOKEY
>     Header SHA1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)
>     MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)
> ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
>     Header V4 DSA/SHA1 Signature, key ID bc6abdd3: NOKEY
>     Header SHA1 digest: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)
>     MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)
>
> Following is an output of properly signed packages. You may see that the
> keys are valid(you can also check the pub key on MIT key storage):
> rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm
> ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm
> ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:
>     Header V4 RSA/SHA1 Signature, key ID 5a906f4c: OK
>     Header SHA1 digest: OK (e82b83bc3a4713d36548a3ea6b7c0d3c3dc35f1f)
>     MD5 digest: OK (e9bfa1fc6a4ae90e84851bfd4583ec29)
> ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:
>     Header V4 RSA/SHA1 Signature, key ID 5a906f4c: OK
>     Header SHA1 digest: OK (d6925400698be829e08bc5013fd28d2c829a2600)
>     MD5 digest: OK (427f42d79b83e314f741ff73a672c5dc)
>
>
> Host RPM version
> >rpm --version
> RPM version 4.11.2
>
> Yocto RPM version
> >tmp/sysroots/x86_64-linux/usr/bin/rpm --version
> rpm (RPM) 5.4.14
>
> Yocto version: jethro (1a52eceaa5df89914b6a711defdcf0046e74c7f6)
>
> Best regards,
> Dimitri
>

--001a114b19249d55fe0530c10615
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div>I&#39;ve found the culprit.=
=C2=A0<div>RPM5 does package auto-signing. Itself it&#39;s not a big deal b=
ut the problem is that it also considers that package is valid if the pubke=
y is present in the RPM header.</div><div>This is an extremely severe secur=
ity issue - any &quot;signed&quot; package can be installed on the target e=
ven if the public key is not installed in the local RPM DB.</div><div><br><=
/div><div>I would consider to either switch to RPM4 or just disable this &q=
uot;feature&quot; in RPM5.</div><div>BTW, what&#39;s purpose of using RPM5 =
in Yocto? The gross distros(SuSe, Fedora, etc) still successfully use RPM4.=
 This means that it is exhaustively verified.</div><div><br></div><div>Best=
 regards,</div><div>Dimitri</div></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Sat, Apr 16, 2016 at 2:57 PM, Dmytro Milinevskyy <=
span dir=3D"ltr">&lt;<a href=3D"mailto:milinevskyy@gmail.com" target=3D"_bl=
ank">milinevskyy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>currently I&#=
39;m trying to enforce rpm signature verification on the target device and =
get weird bogus signature of the RPM packages when the signature is not ena=
bled in the configuration.</div><div>The main issue that this signature is =
considered as valid by the RPM 5.4.14 which is used by Yocto. And thus it i=
s &quot;correctly&quot; installed by &quot;smart&quot; packaging system on =
the target.</div><div><br></div><div>For example here 2 packages built w/o =
signing. Both packages have different keys and RPM is not complaining:</div=
><div>&gt;tmp/sysroots/x86_64-linux/usr/bin/rpm -Kv ./tmp/deploy/rpm/all/os=
-release-1.0-r0.all.rpm ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm</div><=
div>./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:</div><div>=C2=A0 =C2=A0=
 Header V4 DSA signature: OK, key ID bd8f688a</div><div>=C2=A0 =C2=A0 Heade=
r SHA1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)</div><div>=C2=
=A0 =C2=A0 MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)</div><div>./tm=
p/deploy/rpm/all/tzdata-2016a-r0.all.rpm:</div><div>=C2=A0 =C2=A0 Header V4=
 DSA signature: OK, key ID bc6abdd3</div><div>=C2=A0 =C2=A0 Header SHA1 dig=
est: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)</div><div>=C2=A0 =C2=A0 =
MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)</div><div><br></div><div>=
Nevertheless the host RPM(rpm4 from ubuntu) is correctly identifying that t=
he signature is invalid:</div><div>&gt;rpm -Kv ./tmp/deploy/rpm/all/os-rele=
ase-1.0-r0.all.rpm ./tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm</div><div>.=
/tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm:</div><div>=C2=A0 =C2=A0 Head=
er V4 DSA/SHA1 Signature, key ID bd8f688a: NOKEY</div><div>=C2=A0 =C2=A0 He=
ader SHA1 digest: OK (45dfa7cbfe3cfc3a6c4a928e58b100d81f5a367d)</div><div>=
=C2=A0 =C2=A0 MD5 digest: OK (a8450299f5c2d9adecc4bda799b7038d)</div><div>.=
/tmp/deploy/rpm/all/tzdata-2016a-r0.all.rpm:</div><div>=C2=A0 =C2=A0 Header=
 V4 DSA/SHA1 Signature, key ID bc6abdd3: NOKEY</div><div>=C2=A0 =C2=A0 Head=
er SHA1 digest: OK (e95dc6b40965224ae443460117fe2ada4f855b2d)</div><div>=C2=
=A0 =C2=A0 MD5 digest: OK (1dda4ae1673ab96dd9edbdc423df29ac)</div><div><br>=
</div><div>Following is an output of properly signed packages. You may see =
that the keys are valid(you can also check the pub key on MIT key storage):=
</div><div>rpm -Kv ./tmp/deploy/rpm/all/os-release-1.0-r0.all.rpm ./tmp/dep=
loy/rpm/all/tzdata-2016a-r0.all.rpm</div><div>./tmp/deploy/rpm/all/os-relea=
se-1.0-r0.all.rpm:</div><div>=C2=A0 =C2=A0 Header V4 RSA/SHA1 Signature, ke=
y ID 5a906f4c: OK</div><div>=C2=A0 =C2=A0 Header SHA1 digest: OK (e82b83bc3=
a4713d36548a3ea6b7c0d3c3dc35f1f)</div><div>=C2=A0 =C2=A0 MD5 digest: OK (e9=
bfa1fc6a4ae90e84851bfd4583ec29)</div><div>./tmp/deploy/rpm/all/tzdata-2016a=
-r0.all.rpm:</div><div>=C2=A0 =C2=A0 Header V4 RSA/SHA1 Signature, key ID 5=
a906f4c: OK</div><div>=C2=A0 =C2=A0 Header SHA1 digest: OK (d6925400698be82=
9e08bc5013fd28d2c829a2600)</div><div>=C2=A0 =C2=A0 MD5 digest: OK (427f42d7=
9b83e314f741ff73a672c5dc)</div><div><br></div><div><br></div><div>Host RPM =
version</div><div>&gt;rpm --version</div><div>RPM version 4.11.2</div><div>=
<br></div><div>Yocto RPM version</div><div>&gt;tmp/sysroots/x86_64-linux/us=
r/bin/rpm --version</div><div>rpm (RPM) 5.4.14</div><div><br></div><div>Yoc=
to version: jethro (1a52eceaa5df89914b6a711defdcf0046e74c7f6)</div><div><br=
></div><div>Best regards,</div><div>Dimitri</div></div>
</blockquote></div><br></div>

--001a114b19249d55fe0530c10615--
