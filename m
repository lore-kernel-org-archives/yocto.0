Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56E28E00901; Tue, 23 May 2017 08:09:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
X-Greylist: delayed 1801 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 May 2017 08:09:19 PDT
Received: from mail.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9FDDE00710
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 08:09:19 -0700 (PDT)
Received: from mail.raylase.de (127.0.0.1) id h4h8a00171st for
	<yocto@yoctoproject.org>;
	Tue, 23 May 2017 16:39:16 +0200 (envelope-from <J.Spriggs@raylase.de>)
Received: from AKAMA.raylase.de ([192.168.1.34])
	by mail.raylase.de ([192.168.1.38]) (RAYLASE AG )
	with ESMTPS (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384
	bits=256/256)
	id o201705231439160099820-3; Tue, 23 May 2017 16:39:16 +0200
Received: from LILLIAN.raylase.de (192.168.2.27) by AKAMA.raylase.de
	(192.168.1.34) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.845.34;
	Tue, 23 May 2017 16:39:16 +0200
Received: from LILLIAN.raylase.de (192.168.2.27) by LILLIAN.raylase.de
	(192.168.2.27) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.845.34;
	Tue, 23 May 2017 16:39:16 +0200
Received: from LILLIAN.raylase.de ([fe80::819f:4ca1:5102:2e2b]) by
	LILLIAN.raylase.de ([fe80::819f:4ca1:5102:2e2b%12]) with mapi id
	15.01.0845.034; Tue, 23 May 2017 16:39:16 +0200
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Creating a directory in a recipe
Thread-Index: AQHS05bwSxjIrV7LlEWYs6EM8DbHQqIB+c1w
Date: Tue, 23 May 2017 14:39:15 +0000
Message-ID: <db9ab2122eb5421f8429b5be4ea88fb6@raylase.de>
References: <370377A93E714B81A54709E200F398A6@PAULD>
	<13aa5982-027c-371f-b289-684d4d7f5e80@topic.nl>,
	<65fdbdb4-4169-edba-47ae-5b8e089475b6@topic.nl>,
	<C58C38DF-6141-4798-A175-D04CEE872012@sierrawireless.com>
	<AM4PR1001MB134744F1C0013F8A9355C0FDD7FB0@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM4PR1001MB134744F1C0013F8A9355C0FDD7FB0@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.142]
MIME-Version: 1.0
X-Mlf-Version: 9.0.0.1171
X-Mlf-License: BSVK_AP__
X-Mlf-UniqueId: o201705231439160099820
Subject: Re: Creating a directory in a recipe
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
X-List-Received-Date: Tue, 23 May 2017 15:09:23 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bahjat,


>do_install() {
>
>    install -d /test/
>    install -m 0777 bye.sh /test/
>}

Assuming you actually want to create "test"  in the root-dir of your *image=
*,
rather than in the root-dir of your host,
I think you'll find that "$(D}" is your friend, as in ...

install -d ${D}/test

etc.

--
jim

________________________________

RAYLASE AG
Argelsrieder Feld 2+4
82234 Wessling
Germany
Tel.: +49-(0)8153/88 98-0
Fax: +49-(0)8153/88 98-10
http://www.raylase.de

District Court Munich, HRB 131450

Board: Dr. Philipp Sch=F6n (Chairman), Berthold Dambacher, Christoph von Ja=
n

Supervisory Board: Dr. Ulrich Lohmann (Chairman)


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergabe =
dieser Mail ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure or distribution of the material in this e-mail is stric=
tly forbidden.

