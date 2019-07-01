Return-Path: <pawan.b@elpisitsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF2B8E00D42; Mon,  1 Jul 2019 02:51:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_HTML_ONLY, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [74.208.4.197 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
Received: from mout.perfora.net (mout.perfora.net [74.208.4.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47A1AE008CA
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 02:51:36 -0700 (PDT)
Received: from oxuslxaltgw04.schlund.de ([10.72.76.60]) by mrelay.perfora.net
	(mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
	1N95Jb-1ieGB81mTv-016Bu4; Mon, 01 Jul 2019 11:51:33 +0200
Date: Mon, 1 Jul 2019 05:51:32 -0400 (EDT)
From: Pawan Badganchi <pawan.b@elpisitsolutions.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	ChenQi <Qi.Chen@windriver.com>
Message-ID: <1929015931.432903.1561974692610@email.ionos.com>
In-Reply-To: <CAGAf8LxjwgmuH=uNU43x6=YkPzhpj5kjaR1Rd_mLcoyH3QVofA@mail.gmail.com>
References: <980292376.238401.1561633028960@email.ionos.com>
	<5239a45d-0756-6c85-9b2d-218b34d9168c@windriver.com>
	<CAGAf8LxjwgmuH=uNU43x6=YkPzhpj5kjaR1Rd_mLcoyH3QVofA@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev58
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K1:PZgaI1+S0EnAwh2MdpuyfzDu+zA42U3yd6h+VVb/bf9eWooqnuh
	mtOh6gi80hFl2RnDifDhDGi1NTfue4MJLFdxqyNKqr4BRd1jQr/yI3fXGLo+tRVocyoDMIo
	rc/qV2hTh3wZ7KTUsSYDLM26sKuZoFjOVWZVVnt1owMamiW+y/LWophJZAEqxu45fnb44pP
	Ehx36QYGzcYLaZ0XeJgzw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:HgwkflTKe8U=:7W87W+2DKMx7TrXHDjKbzn
	6Sj+gk1UNbts3DJYbLFsbWy8t8/fzDYkhtKyx5Y4Rfxwbz4LFM7ejehMkXa1ZLjgacIu31z/n
	3W/AIwwiHOINTvgK8E70ygnQywsebBCZ/MVaJAZs4vAK07kJvWSniAa1vRlk7IeRMLgn4sinf
	amUjc9/Cwr8hg8yVs29fMYG1mcEsJJw/0NDdYJnJa0Ldm0IOOe2d2ORZHuL3HsXF5MltIG2NK
	cMKreyvuXy3HlRkkAA+Tt7gqlH2BTMMOSX/sOcAEXOxlAsGTqSOtS2TfhFsIS4JQ7KsP7eGFs
	BzhreRu1dGiDlp1BOsg1UN6knh8+ELyRvODMdtDVToIGMNctrOawfvYqs0iM101wlYaPQAW8c
	21JaK0aKkTKkwsYq88FRQpbzsBsL5ZaRB+al8XSqr7bay5fgrHDtaLkcP7aDaODB16iVyy40A
	atBN33W0Z1VNfyIOrO5YD4IajcWIF1MLfOh8n0Cd2CeTtAG1ucvMr9OOzEC1+5DPrctfAEfVS
	H56i7Kt2WrOMMZOIBM0zPaBGpyyv93TD4SZAYQZznpvcJxAjSWw1LqmgRp281BWYTxmaspSDP
	JXrgZMkF21Y9g+hQ2oTubEN/0Pl8UiRXIrDsemov/v2iAC65SE3oP6VjKjPGIemxAQtR7GI2c
	Knpbwq7jByA/e8An/reUqZrlhg9ZdW76NANiIIL9Ui6MlfCjUE7RZMzEE72ik/MQpnYPJQqak
	Pp2Jlq2H7E1xTOJBk+cGAdgHNe3vulvC7NfNRaVjwzWrehfaxzuKiAdxOcaFdxVjIyDMTs947
	DIAtw2R
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
X-List-Received-Date: Mon, 01 Jul 2019 09:51:37 -0000
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><p>Hello sir,<br></p><p>&#160;&#160;&#160;&#160;&#160;&#160;&#=
160;&#160;&#160;&#160; I am building qt image with bitbake atmel-qt5-demo-i=
mage command.After booting the kernel i am giving modprobe option and&#160;=
echo 0x2949 0x8247 &#62; /sys/bus/usb-serial/drivers/option1/new_id command=
 to enumerate the usb ports.with this modprobe option is not working,it&#39=
;s giving modprobe: FATAL: Module option not found in directory /lib/module=
s/4.14.73-linux4sam-6.0-dirty<br> error.</p><p>&#160;&#160;&#160;&#160;&#16=
0;&#160;&#160;&#160;&#160; with bitbake core-image-minimal image modprobe o=
ption and&#160;echo 0x2949 0x8247 &#62; /sys/bus/usb-serial/drivers/option1=
/new_id two cammands are working fine and usb ports are enumerating.<br></p=
><p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; Please tell us h=
ow to include kernel-modules in atmel-qt5-demo-image image.<br></p><p>Thank=
s &#38; Regards,<br></p><p>Pawan<br></p><blockquote type=3D"cite">On June 2=
8, 2019 at 9:45 AM Zoran Stojsavljevic &#60;<a href=3D"mailto:zoran.stojsav=
ljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&#62; wrote:<br><br><br>=
Some hints again...<blockquote type=3D"cite">I am adding IMAGE_INSTALL_appe=
nd =3D &#34;kernel-modules&#34; in local.conf.<br>When i build with bitbake=
 core-image-minimal command this kernel<br>module is loading.while i build =
with bitbake atmel-qt5-demo-image<br>command kernel module is not loading.<=
br>Please tell us what is the issue.</blockquote><br>Here is what local.con=
f I am using as included minimal kernel source<br>tree (also with systemd i=
ncluded). Please, try to experiment with it!<br><a href=3D"https://github.c=
om/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/local.=
conf_full" rel=3D"noopener" target=3D"_blank">https://github.com/ZoranStojs=
avljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/local.conf_full</a>=
.<br><br>I use to compile the YOCTO Warrior minimal system for BBB the foll=
owing command:<br>bitbake -k core-image-minimal<br><br>Hope this helps!<br>=
<br>Best Regards,<br>Zoran<br><br><br>On Fri, Jun 28, 2019 at 11:41 AM Chen=
Qi &#60;<a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a>&=
#62; wrote:<br>&#62;<blockquote type=3D"cite">Forward to this yocto mailing=
 list.<br>When you have problems regarding yocto, use this mailing list.</b=
lockquote><blockquote type=3D"cite">Regards,<br>Chen Qi</blockquote><blockq=
uote type=3D"cite">On 06/27/2019 06:57 PM, Pawan Badganchi wrote:</blockquo=
te><blockquote type=3D"cite">Hello sir,</blockquote><blockquote type=3D"cit=
e">I am adding IMAGE_INSTALL_append =3D &#34;kernel-modules&#34; in local.c=
onf.When i build with bitbake core-image-minimal command this kernel module=
 is loading.while i build with bitbake atmel-qt5-demo-image command kernel =
module is not loading.</blockquote><blockquote type=3D"cite">Please tell us=
 what is the issue.</blockquote><blockquote type=3D"cite">Thanks &#38; Rega=
rds,</blockquote><blockquote type=3D"cite">Pawan</blockquote>&#62;<br>&#62;=
<br>&#62;<blockquote type=3D"cite">--<br>__________________________________=
_____________<br>yocto mailing list<br><a href=3D"mailto:yocto@yoctoproject=
.org">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproject.o=
rg/listinfo/yocto" rel=3D"noopener" target=3D"_blank">https://lists.yoctopr=
oject.org/listinfo/yocto</a><br></blockquote></blockquote></body></html>
=20

