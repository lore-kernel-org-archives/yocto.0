Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E502E009DF; Fri,  5 Jun 2015 00:52:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1388 seconds by postgrey-1.32 at yocto-www;
	Fri, 05 Jun 2015 00:52:27 PDT
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1219CE0098D;
	Fri,  5 Jun 2015 00:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Type:From;
	bh=5vM47t0z9EssHLYEXjvkhO1LFtGenfsoH94AcWRNDos=; 
	b=V8pt6ewmLry1K9bJjO+I/A8r/h7gIZjPAdQpDFYpy5plMTLGevwn5N0pGs9M9yinGn6agIH/f5hzu1DisfJiifwiMlJDRKGfcopBEHR6cLtoZOlFwIYAdlhQDdwJzGFuDHdFA5UGgQn2mJn4yESfwndhB+4hBGNdQ2fkeOXM2qI=;
Received: from durham.keylevel.com ([88.97.63.243]:42648
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.85) (envelope-from <opensource@keylevel.com>)
	id 1Z0m41-000Ggk-Ts; Fri, 05 Jun 2015 08:29:15 +0100
From: Chris Tapp <opensource@keylevel.com>
X-Pgp-Agent: GPGMail 2.5b6
Date: Fri, 5 Jun 2015 08:29:00 +0100
Message-Id: <107F2908-2817-46D5-96CC-0B71CD6ADBEB@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>,
 meta-intel@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: "Crazy" Xorg memory usage after upgrading from Daisy to Fido
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
X-List-Received-Date: Fri, 05 Jun 2015 07:52:29 -0000
X-Groupsio-MsgNum: 25059
Content-Type: multipart/signed;
	boundary="Apple-Mail=_2DBF7F8D-6F0D-4B9E-911C-F869F9C885CE";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_2DBF7F8D-6F0D-4B9E-911C-F869F9C885CE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I=E2=80=99ve got an application that I=E2=80=99ve had running nicely =
under Daisy for some time. As Daisy is now a bit old, I decided to move =
the application to Fido. I=E2=80=99m using the =
meta-intel/isg/valleyisland BSP and also switched to using its Fido =
branch.

The move only required a few minor changes and allowed me to drop a =
Daisy =E2=80=9Cupdates=E2=80=9D layer that I had been using for things =
like gstreamer-1.0.

However, there is one behaviour which is killing me - I keep getting =
oom-killer events!

The application is basically an OpenGL-ES 2.0 application that renders =
various bits of text, images and streams captured from a gstreamer =
pipeline at 60 Hz to a 1080 screen.

Under Daisy this generally took just under 50% CPU and used a modest =
percentage of the 4 GB system memory - i.e. no where near running out =
and usage was just about static.

Under Fido the CPU usage is about the same and the memory used by the =
application itself looks reasonable when compared to Daisy (and usage is =
static). However, the memory used by XOrg is far from constant or stable =
- it basically has a VSZ value cycling from about 630m to 2989m with the =
cycle period being in the order of 5 to 10 seconds. Peaks in XOrg memory =
usage coincide with stutters in video playback within my app (audio is =
unaffected).

Monitoring /proc/meminfo when this is going on shows that =E2=80=9CShmem=E2=
=80=9D usage is following the same pattern as the memory used by XOrg =
(i.e. Shmem usage is high at the same time). If the values are plotted =
on a graph they appear to show that Shmem usage grows linearly and then =
falls rapidly when nearly all the free memory has been exhausted, =
perhaps in response to a delayed garbage collection run.

Does anyone have any ideas as to what I should be looking at to work out =
what=E2=80=99s going on?

Are there any significant changes between XOrg under Daisy and Fido that =
could be causing this?

Could this be related to the meta-intel video drivers?

Any feedback / comments would be really appreciated.

Thanks :-)

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_2DBF7F8D-6F0D-4B9E-911C-F869F9C885CE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJVcU/JAAoJEAM2GeiJDBSG/iIQAJS+3R2gjCUrdj8ROnAPRNwE
rLXHDtq9tP/4xacYOh8MJHgNs+ckFrCL3PMuU67NkHXXMBU2Dv6BmKHkPnIaHsz+
80N1a7MMqdUSWRqt9uUKs9gblhdATVuWwrORE+3pxleihxYgpIS89bMiWKOAaSJz
R/Wy9+IfnB6QaHZf8DMpZEHURx+yZayd74V9KjUEc5fB1ikgitMT1c/3k7jcaAtr
7BTUujrcjA93y/vqaG7zr7MSQAyGnRPRLU9Qg1bRcVmXpHFAGub5NrG2fKnZ7DGP
ynhF1V1i+Gd6GVLkmY84i7COnJiByT1dtpRvRaf06GVeU5vNBVXDaJMNKl6Mzd9/
XICmhNaY0EIFBu9CFIwi+y37SRisHP8wbleMj14Csz8yU5fix5C40m+YYtF3IqMo
974vrWx6EXpHdsrBtENGIIqSp0hGXiMugfYXHVfo8ryZt8+uFEvuazPdbah1zmzZ
xW61kL40YXhaIrHKmrdSKl7cfJvo7hPTFn6pmQtqh5sIh5AJlMHAD/jGrkGcxsrY
rCJq2UYkl+kcsSiv9BrcxV8m1UDKNr1M0IOrqBaUzyBf91GNuBXYhJiEHms8Joqm
WrM9iB/g4ny1O/ZuITmTSPvjvXcPuifskoGRl7ffry/JGKjDXTqdZmKWc56Rl9tq
XwgFVTfyQoPNK2vkkSuA
=RdLq
-----END PGP SIGNATURE-----

--Apple-Mail=_2DBF7F8D-6F0D-4B9E-911C-F869F9C885CE--
