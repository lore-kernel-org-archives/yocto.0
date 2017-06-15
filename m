Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA8E8E00B83; Thu, 15 Jun 2017 05:25:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1426 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Jun 2017 05:25:24 PDT
Received: from smtp.laposte.net (smtpoutz26.laposte.net [194.117.213.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71F29E00B57
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 05:25:24 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout014 (Postfix) with ESMTP id 77813121EC0
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 14:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1497528097; bh=KTMF0mpklNpO7SE1/A50IwCjvrprdSMXW0DOMbflS4w=;
	h=To:Subject:References:Date:From:In-Reply-To;
	b=NrHELfPcGhAi4KmS+P9Tm98DwRShPrVC1AHDhD8MJby6KxyFCPpJGCEq/UKqTlFcI
	AYFUiLGZioOXr3Q3CySkl7Dmtlqwd4NyzmAn5MSCrYg4HHA3NuAqRN6dQqSh7TBcpz
	Zg0CnNGahxIbLsl2OOC57Ptki07tAoD1O3vup8teP+0GM3p2GjcNverLwQGiuHdA6I
	ri3tUTr87CRp1H7X1m71OpYHKMjjg5tPkv7aindFYONgt4Q8Gc3wcTXCWR/ARnMCdf
	CRFoPiZmhNdih1SvTV0XVORahF8VKZfkSEZomMWIhIsHE52bqRvVCIK1jmfPW7iRRE
	iMl2Ghn8PvS0A==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout014 (Postfix) with ESMTP id 68BF0121EE5
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 14:01:37 +0200 (CEST)
Received: from lpn-prd-vrin004 (lpn-prd-vrin004.laposte [10.128.63.5])
	by lpn-prd-vrout014 (Postfix) with ESMTP id 65963121EC0
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 14:01:37 +0200 (CEST)
Received: from lpn-prd-vrin004 (localhost [127.0.0.1])
	by lpn-prd-vrin004 (Postfix) with ESMTP id 55D3D71406C
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 14:01:37 +0200 (CEST)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin004 (Postfix) with ESMTPA id 164B3713FC4;
	Thu, 15 Jun 2017 14:01:37 +0200 (CEST)
To: "Yocto list discussion" <yocto@yoctoproject.org>, idealsim
	<idealsim@laposte.net>
References: <9c70fe71-0365-fcae-2e37-721005c6cf7d@laposte.net>
Date: Thu, 15 Jun 2017 14:01:36 +0200
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.y1vicygfmnlnty@pc-mls.ecafaros.local>
In-Reply-To: <9c70fe71-0365-fcae-2e37-721005c6cf7d@laposte.net>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeeljedrjeejgdegkecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhs
X-VR-Cause-3: ucdlqddutddtmdenucfjughrpegtvffufhffggfhkfgjfgesrgdtreertderjeenucfhrhhomhepihgu
X-VR-Cause-4: vggrlhhsihhmuceoihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhepohhp
X-VR-Cause-5: vghrrgdrtghomhenucfkphepvdduvddrvdefgedrfeeirddufeehnecurfgrrhgrmhepmhhouggvpehs
X-VR-Cause-6: mhhtphhouhhtpdhhvghlohepphgtqdhmlhhsrdgvtggrfhgrrhhoshdrlhhotggrlhdpihhnvghtpedv
X-VR-Cause-7: uddvrddvfeegrdefiedrudefhedpmhgrihhlfhhrohhmpehiuggvrghlshhimheslhgrphhoshhtvgdr
X-VR-Cause-8: nhgvthdprhgtphhtthhopehiuggvrghlshhimheslhgrphhoshhtvgdrnhgvth
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: Re: <DKIM> samba create user with password
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
X-List-Received-Date: Thu, 15 Jun 2017 12:25:29 -0000
Content-Type: multipart/alternative; boundary=----------OLvHYZtqtfHCK1Q1erMiZD

------------OLvHYZtqtfHCK1Q1erMiZD
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

I have made some progress but still have an issue. First to create an us=
er  =

we need expect. I add it to my local.conf. Under the script that work  =

(tested on the card) :

      #!/usr/bin/expect -f
      spawn echo script for create samba user
      spawn smbpasswd -a sambaUser
      expect "New SMB password:"
      send "myPassword\n"
      expect "Retype new SMB password:"
      send "myPassword\n"
      interact
      spawn echo end of script
Then i have modified my recipe to add this script and launch it at first=
  =

boot :

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

# Add custom smb.conf file to samba recipe
SRC_URI +=3D "file://22-samba-conf.patch \
file://createUserSamba.sh \
   "

do_install_append () {
install -m 0755 ${WORKDIR}/createUserSamba.sh ${D}${sysconfdir}/samba
}

pkg_postinst_samba () {
/etc/samba/createUserSamba.sh
}

But this don't work ! Do you have some advices to resolve this please ?

regards

Mickael.

Le Mon, 12 Jun 2017 21:30:55 +0200, idealsim <idealsim@laposte.net> a  =

=E9crit:

>
> Hi, i'm trying to configure a samba server from yocto for my card. I  =

> have a working server (add samba in local.conf), but i would like to a=
dd  =

> the user >with password to samba at yocto build step. For this i add  =

> this recipe (samba_%.bbappend)
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>
> # Replace default smb.conf file to /etc/samba with my custom
> SRC_URI +=3D "file://22-samba-conf.patch"
>
> pkg_postinst_${PN} () {
>    smbpasswd -a sambaUser -s
>    echo Password
>    echo Password
>    echo
> }
>
>
> For that i use pkg_postinst () but i don't know if i use it correctly =
 =

> (for the moment this won't work) ! At first boot time i need to execut=
e  =

> #smbpasswd in >shell to activate the user in Samba. If someone can hel=
p  =

> to configure it in yocto recipe ?
>
> regards
>
> Mickael



-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

------------OLvHYZtqtfHCK1Q1erMiZD
Content-Type: multipart/related; boundary=----------OLvHYZtqtfHCK1EZc8vQly

------------OLvHYZtqtfHCK1EZc8vQly
Content-Type: text/html; charset=iso-8859-15
Content-ID: <op.1497528096987.76eed8655d6ac0fc@172.22.9.5>
Content-Transfer-Encoding: Quoted-Printable

<!DOCTYPE html><html><head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dut=
f-8">
  =

<style type=3D"text/css">body { font-family:'Times New Roman'; font-size=
:13px}</style>
</head>
<body bgcolor=3D"#FFFFFF" text=3D"#000000"><div>I have made some progres=
s but still have an issue. First to create an user we need expect. I add=
 it to my local.conf. Under the script that work (tested on the card) :<=
/div><div><br></div><div>
<pre style=3D"margin: 0px; padding: 10px; font-family: Consolas, &quot;C=
ourier New&quot;, Courier, monospace; line-height: 1.24; word-wrap: norm=
al; font-size: 10pt; background-color: rgb(255, 255, 255); border-radius=
: 0px; overflow: auto; min-height: 30px; max-height: 500px; direction: l=
tr; color: rgb(20, 20, 20); font-style: normal; font-variant-ligatures: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: =
none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration-style: initial; text-decoration-color: initial;">     #!/usr=
/bin/expect -f
     spawn echo script for create samba user
     spawn smbpasswd -a sambaUser<br>     expect "New SMB password:"
     send "myPassword\n"
     expect "Retype new SMB password:"
     send "myPassword\n"
     interact
     spawn echo end of script</pre>Then i have modified my recipe to add=
 this script and launch it at first boot :</div><div><br></div><div>FILE=
SEXTRAPATHS_prepend :=3D "${THISDIR}/files:"<br><br># Add custom smb.con=
f file to samba recipe<br>SRC_URI +=3D "file://22-samba-conf.patch \<br>=
            file://createUserSamba.sh \<br>&nbsp;           "<br><br>do_=
install_append () {<br>	     install -m 0755 ${WORKDIR}/createUserSamba.=
sh ${D}${sysconfdir}/samba<br>}<br><br>pkg_postinst_samba () {<br>      =
  /etc/samba/createUserSamba.sh<br>}</div><div><br></div><div>But this d=
on't work ! Do you have some advices to resolve this please ?</div><div>=
<br></div><div>regards</div><div><br></div><div>Mickael.</div><div><br><=
/div><div>Le Mon, 12 Jun 2017 21:30:55 +0200, idealsim &lt;idealsim@lapo=
ste.net&gt; a =E9crit:<br></div><br><blockquote style=3D"margin: 0 0 0.8=
0ex; border-left: #0000FF 2px solid; padding-left: 1ex">
    <p>Hi, i'm trying to configure a samba server from yocto for my
      card. I have a working server (add samba in local.conf), but i
      would like to add the user with password to samba at yocto build
      step. For this i add this recipe (samba_%.bbappend)</p>
    <pre>FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

# Replace default smb.conf file to /etc/samba with my custom
SRC_URI +=3D <a class=3D"moz-txt-link-rfc2396E" href=3D"file://22-samba-=
conf.patch">"file://22-samba-conf.patch"</a>

pkg_postinst_${PN} () {
    smbpasswd -a sambaUser -s
    echo Password
    echo Password
    echo
}

</pre>
    <p>For that i use pkg_postinst () but i don't know if i use it
      correctly (for the moment this won't work) ! At first boot time i
      need to execute <i>#smbpasswd</i> in shell to activate the user
      in Samba. If someone can help to configure it in yocto recipe ?</p=
>
    <p>regards</p>
    <p>Mickael<br>
    </p>
  </blockquote><br><br><br><div id=3D"M2Signature"><div>-- </div><div>Ut=
ilisant le logiciel de courrier d'Opera : <a href=3D"http://www.opera.co=
m/mail/">http://www.opera.com/mail/</a></div></div></body></html>

------------OLvHYZtqtfHCK1EZc8vQly--

------------OLvHYZtqtfHCK1Q1erMiZD--
