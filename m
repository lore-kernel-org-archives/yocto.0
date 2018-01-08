Return-Path: <Jose.DiazdeGrenu@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4424E00DC2; Mon,  8 Jan 2018 01:21:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.2 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Jan 2018 01:21:02 PST
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A57D5E00D92
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 01:21:02 -0800 (PST)
Received: from [216.82.249.147] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-2.bemta-12.messagelabs.com id AB/BB-31148-F66335A5;
	Mon, 08 Jan 2018 09:14:23 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOIsWRWlGSWpSXmKPExsXi5LtOQDffLDj
	KYM8fRotJL9ewOTB6tJ/oYwtgjGLNzEvKr0hgzdh58gRjwXOOirctH1kbGOezdzFycQgJrGSU
	6Js0hQXCWcwo8XXuLqAMJwebgLnEtMMHWUBsEQFTiRfHvrCB2MICNhKru08wQsQdJbZuvMIKY
	etJdGxqBetlEVCRuNxwDczmFfCV+P/mP1gNo4CsxMrzp8F6mQXEJe5N6QGLSwgISCzZc54Zwh
	aVePn4H1RcXuLw/3VQ9ToSC3Z/YoOwtSWWLXzNDDFfUOLkzCdgdwoJqEm0zZnAPIFRaBaSFbO
	QtM9C0j4LSfsCRpZVjBrFqUVlqUW6hpZ6SUWZ6RkluYmZObqGhkZ6uanFxYnpqTmJScV6yfm5
	mxiBgV7PwMC4g3FKo9chRkkOJiVRXlHngCghvqT8lMqMxOKM+KLSnNTiQ4wyHBxKErzSpsFRQ
	oJFqempFWmZOcCYg0lLcPAoifAeNwFK8xYXJOYWZ6ZDpE4x6nI8m/m6gVmIJS8/L1VKnFcZZI
	YASFFGaR7cCFj8X2KUlRLmZWRgYBDiKUgtys0sQZV/xSjOwagkzCsDMoUnM68EbtMroCOYgI5
	4ty8Q5IiSRISUVAOj1XveiKwnC/suzbz7NNB34XupuZsWb/zStv05S/lSHYO8uod3n0xlM7xd
	qnT2bVSOys+TGc/jdnkGypSv9LFZf1ixwuzU6ZCPh68fcMz+E73y6x/tjXNTn5VZxf2qsvXo6
	3ZvYzRtXes3KW9huNEJQ93LAe3z9R7YcVW7K6hPtLqWvJ/jrqyaEktxRqKhFnNRcSIAmRbIjP
	oCAAA=
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-14.tower-29.messagelabs.com!1515402862!74914265!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 20015 invoked from network); 8 Jan 2018 09:14:22 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-14.tower-29.messagelabs.com with SMTP;
	8 Jan 2018 09:14:22 -0000
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 8 Jan 2018 03:14:19 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0361.001;
	Mon, 8 Jan 2018 10:14:07 +0100
From: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Postinstallation script warnings in Yocto 2.4 Rocko
Thread-Index: AdOIYQlF3trmw5fqTDOXmOVi9/Topw==
Date: Mon, 8 Jan 2018 09:14:07 +0000
Message-ID: <0B2EBCD48D33654381E736352034C70C01B5781A@dor-sms-xch01.digi.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.92]
MIME-Version: 1.0
Subject: Postinstallation script warnings in Yocto 2.4 Rocko
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
X-List-Received-Date: Mon, 08 Jan 2018 09:21:03 -0000
Content-Language: es-ES
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,=0A=
=0A=
I posted this question in the poky mailing list, but I realize now that thi=
s may be the correct place for it. Sorry for reposting.=0A=
=0A=
I am trying to create a recipe with a post installation script. I am using =
the following fragment of code (as documented in http://www.yoctoproject.or=
g/docs/2.4/mega-manual/mega-manual.html#new-recipe-post-installation-script=
s ):=0A=
=0A=
=0A=
pkg_postinst_PACKAGENAME() {=0A=
     if [ x"$D" =3D "x" ]; then=0A=
          # Actions to carry out on the device go here=0A=
     else=0A=
          exit 1=0A=
     fi=0A=
}=0A=
=0A=
This was working fine in Yocto 2.2, but now in Yocto 2.4 I am getting these=
 warnings:=0A=
=0A=
WARNING: core-image-base-1.0-r0 do_rootfs: [log_check] core-image-base: fou=
nd 3 warning messages in the logfile:=0A=
[log_check] warning: %post(init-ifupdown-1.0-r7.0.cortexa7hf_neon) scriptle=
t failed, exit status 1=0A=
=0A=
How can I clean these warnings in Yocto 2.4? Is that still the correct =0A=
way to create post installation script that must run on the target? =0A=
Should I just replace 'exit 1' by 'exit 0'?=0A=
=0A=
Thanks=

