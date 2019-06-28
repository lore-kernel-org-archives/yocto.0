Return-Path: <pawan.b@elpisitsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD944E009EA; Fri, 28 Jun 2019 04:21:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_HTML_ONLY, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [74.208.4.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Jun 2019 04:21:49 PDT
Received: from mout.perfora.net (mout.perfora.net [74.208.4.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC283E009EA
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 04:21:49 -0700 (PDT)
Received: from oxuslxaltgw01.schlund.de ([10.72.76.57]) by mrelay.perfora.net
	(mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
	1MD8s1-1hpJCG0fIX-0097eT; Fri, 28 Jun 2019 13:16:45 +0200
Date: Fri, 28 Jun 2019 07:16:44 -0400 (EDT)
From: Pawan Badganchi <pawan.b@elpisitsolutions.com>
To: ChenQi <Qi.Chen@windriver.com>
Message-ID: <570562183.566234.1561720604653@email.ionos.com>
In-Reply-To: <5239a45d-0756-6c85-9b2d-218b34d9168c@windriver.com>
References: <980292376.238401.1561633028960@email.ionos.com>
	<5239a45d-0756-6c85-9b2d-218b34d9168c@windriver.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev58
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K1:4va8omNaOBYpnhvo57mpaW/hbebFPcsNtKw9ercE426I/XKD+a8
	j930SB+WaDyQsb4mbtlpH2T0ccNugOjhmYzINSyluLx0lMQNdd8a8MFcJisL0Pnz9y0DEc6
	TB35qhuNFSAgBBrPdA9ALxC+o5FBykGNqMsgcNsswAyROp/uVY8BOuAVguWIsHvONfdeDCb
	MNDEtxURNE8m8S9NGtNAA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:7UL9bPa+QyU=:R9M0zFaexYGGUFgIXQgRue
	QvupYf3QFfOTH3v4QJjwVLGRSGHlhBY3N4hVamGpt7IDBOQ3UeKWIoxJrSHZCSuN+Q3V144+Y
	qxZfurx07SHhrzJxGHMNvl2Sybif19rBzOJ9zUgWzlL824eqsGshLco+/AkoAJ8rKaHFeQrM2
	hu45+tFzjCBKr0SsvSIotvPMNa/IZeM8X2DExV3zi7GzzRpkZkmCVoXdWZoTA/nO/6Ol2bjBB
	0ArE5q/Dnc4If8v4CKaZ2MdFRiJbXC+UlfrGbW2Z42RJOcBGnMdO6x2NLHcskMnYD7XtMicxS
	OAmFNgxjuj1BYFyGYukDiUZXaFEHWu+BdOuFdsMCZx3X7/Q5zIhg+EenCMyrgHfAaRaQLJmlF
	ACGuMe+HmbvSD4i+YB4ZgaYuQGooUCyrzl2eiPiRIaLz9Oh3sPY+NsQd06IibY3hKnrUpqk1a
	q93UkAmAbVKyPMzzQJx34nyFikEOLQmUlPiixXMu/HCcEmYWInZmQh2ppYKfD4hSpdmLPfATE
	2S2p8O2Oec9cDw1HaqO/i67csBqe0nyZQCEtFR6eLUQq1pOVOaQlAcKGoql4Kt5Xz0uImVUNY
	sGsXLyFRPznG3xJJdqU08AYioeEB4jcMmZfSwt452LlmoYnaZQ1pB5KJcu5rs9twK7IPg1wNM
	mvLIXpZUgEpRikEPfNycSeomwlYIQUVOU5UJlgEAXckmVXSTn+ek70VdVyanXOMGNuhVvCTYe
	qCTVZpXKQ+nMb/IzxhY5STeQLTfgdD2rbTZpNdXRxmdS7TmuxvkuCdTH0gmqHKAfQON5lU3xi
	9MnoZkS
X-Mailman-Approved-At: Mon, 08 Jul 2019 02:27:29 -0700
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-builds] Yocto build Issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Pawan Badganchi <pawan.b@elpisitsolutions.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Jun 2019 11:21:50 -0000
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><p>can you please send to me the link.<br></p><p><br></p><p>Th=
anks &#38; Regards,<br></p><p>Pawan<br></p><blockquote type=3D"cite">On Jun=
e 28, 2019 at 5:50 AM ChenQi &#60;Qi.Chen@windriver.com&#62; wrote: <br> <b=
r><div class=3D"ox-20bafde948-moz-cite-prefix">Forward to this yocto mailin=
g list. <br> When you have problems regarding yocto, use this mailing list.=
 <br> <br> Regards, <br> Chen Qi <br> <br> On 06/27/2019 06:57 PM, Pawan Ba=
dganchi wrote: <br></div><blockquote type=3D"cite"><p>Hello sir,<br></p><p>=
&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; I am adding IM=
AGE_INSTALL_append =3D &#34;kernel-modules&#34; in local.conf.When i build =
with&#160; bitbake core-image-minimal command this kernel module is loading=
.while i build with bitbake atmel-qt5-demo-image command kernel module is n=
ot loading.<br></p><p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160=
; Please tell us what is the issue.<br></p><p>Thanks &#38; Regards,<br></p>=
<p>Pawan<br></p><br> <br></blockquote><p><br></p></blockquote><p class=3D"d=
efault-style"><br>&#160;</p></body></html>
=20

