Return-Path: <brad@evidence.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 178C3E015D6
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 11:09:26 -0700 (PDT)
X-ASG-Debug-ID: 1380218965-0499bf1062f3f80001-yzSStA
Received: from MAGNI.atmoss (magni.atmoss [10.10.20.112]) by email.taser.com
	with ESMTP id zF1doChk0iv8UqyU for <yocto@yoctoproject.org>;
	Thu, 26 Sep 2013 11:09:25 -0700 (MST)
X-Barracuda-Envelope-From: brad@evidence.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.112) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Thu, 26 Sep 2013 11:09:25 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Thu, 26 Sep 2013 11:09:24 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
From: Brad Litterell <brad@evidence.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Best way to reuse install scripts across multiple recipes?
X-ASG-Orig-Subj: Best way to reuse install scripts across multiple recipes?
Thread-Index: AQHOuuOHun0iqPO+C0qxYFWw6bomZw==
Date: Thu, 26 Sep 2013 18:09:23 +0000
Message-ID: <E51394554A503C4E852F9BEE46B03E8DF038D8@TI-ODIN.tasernet.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: magni.atmoss[10.10.20.112]
X-Barracuda-Start-Time: 1380218965
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.140947
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: Best way to reuse install scripts across multiple recipes?
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
X-List-Received-Date: Thu, 26 Sep 2013 18:09:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E51394554A503C4E852F9BEE46B03E8DF038D8TIODINtasernetcom_"

--_000_E51394554A503C4E852F9BEE46B03E8DF038D8TIODINtasernetcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm finding that I use a pattern like this in a number of recipes to instal=
l all the files that exist in a particular folder, generally scripts or dat=
a files:

    # copy scripts
    pushd ${S}/files/bin
    # note that failure in the exec is not always captured here, so this ne=
eds to be enhanced
    # to catch that kind of build failure.
    find . -type f -exec install -m 0644 {} ${D}/bin/{} \;
    popd

As the comment exists, I need to expand this to a real loop with error hand=
ing, so I'm wondering if (a) there already exists a similar call that I can=
 reuse in yocto (similar to oe_libinstall), or (b) whether I should add it =
to utils.bbclass, or a private recipe.  Would it be useful to submit back t=
o the project?  Or am I just going about a common task the wrong way?

I'm thinking of adding a function like this:

oe_folderinstall <source> <dest> <mode>

Thanks,
Brad

--_000_E51394554A503C4E852F9BEE46B03E8DF038D8TIODINtasernetcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div>I'm finding that I use a pattern like this in a number of recipes to i=
nstall all the files that exist in a particular folder, generally scripts o=
r data files:</div>
<div><br>
</div>
<div>
<div>&nbsp; &nbsp; # copy scripts</div>
<div>&nbsp; &nbsp; pushd ${S}/files/bin</div>
<div><span style=3D"font-size: 10pt;">&nbsp; &nbsp; # note that failure in =
the exec is not always captured here, so this needs to be enhanced&nbsp;</s=
pan></div>
<div>&nbsp; &nbsp; # to catch that kind of build failure.</div>
<div>&nbsp; &nbsp; find . -type f -exec install -m 0644 {} ${D}/bin/{} \;</=
div>
<div>&nbsp; &nbsp; popd</div>
</div>
<div><br>
</div>
<div>As the comment exists, I need to expand this to a real loop with error=
 handing, so&nbsp;<span style=3D"font-size: 10pt;">I'm wondering if (a) the=
re already exists a similar call that I can reuse in yocto (similar to oe_l=
ibinstall), or (b) whether I should add
 it to utils.bbclass, or a private recipe. &nbsp;Would it be useful to subm=
it back to the project? &nbsp;Or am I just going about a common task the wr=
ong way?</span></div>
<div><span style=3D"font-size: 10pt;"><br>
</span></div>
<div><span style=3D"font-size: 10pt;">I'm thinking of adding a function lik=
e this:</span></div>
<div><br>
</div>
<div>oe_folderinstall &lt;source&gt; &lt;dest&gt; &lt;mode&gt;</div>
<div><br>
</div>
<div><span style=3D"font-size: 10pt;">Thanks,</span></div>
<div>Brad</div>
</div>
</body>
</html>

--_000_E51394554A503C4E852F9BEE46B03E8DF038D8TIODINtasernetcom_--
