Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 896BDE00944; Thu, 18 Dec 2014 01:12:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 300D5E00897
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 01:12:31 -0800 (PST)
Received: from localhost (unknown [78.10.193.111])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 9DE2F2DB045;
	Thu, 18 Dec 2014 10:12:28 +0100 (CET)
Date: Thu, 18 Dec 2014 10:12:28 +0100
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: Petter Gustad <yocto@gustad.com>
Message-ID: <20141218091228.GA10057@localhost.localdomain>
References: <20141218.082256.838554820950505606.petter@gustad.com>
MIME-Version: 1.0
In-Reply-To: <20141218.082256.838554820950505606.petter@gustad.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Image will halt soon after boot
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
X-List-Received-Date: Thu, 18 Dec 2014 09:12:42 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On 12/18 08:22, Petter Gustad wrote:
>
> I've run "bitbake rpi-hwup-image" using the daisy branch:
>
> meta-yocto-bsp    = "daisy:1e668ccf1a05c5d730de9747bc1c2b0446bda556"
> meta-raspberrypi.git = "daisy:946b69299737cc2f1378c864f1b9075280db1b53"
>
> However, whenever I boot the created sdimage it will lock up during
> boot. Typically I will see some garbage on the serial console.
> Sometimes I'm able to log in, but then then I get no response (as in
> the below session). Putting a pre-compiled distribution on the same
> sdcard will boot just fine.
>
> Does anybody else observe this behavior?

Have you seen the same on 1.7 or current master? I'm using a number of
Yocto built images (sone on 1.7.x, other mostly follow poky +
meta-raspberrypi master branches) and things seem to work just fine.

--
Maciej Borzęcki
Senior Software Developer at Open-RnD Sp. z o.o., Poland
www.open-rnd.pl
mobile: +48 889 117 365, fax: +48 42 657 9079


Niniejsza wiadomość wraz z załącznikami może
zawierać chronione prawem lub poufne informacje i została
wysłana wyłącznie do wiadomości i użytku osób, do których
została zaadresowana. Jeśli wiadomość została otrzymana
przypadkowo zabrania się jej kopiowania lub rozsyłania do osób
trzecich. W takim przypadku uprasza się o natychmiastowe
zniszczenie wiadomości oraz poinformowanie nadawcy o
zaistniałej sytuacji za pomocą wiadomości zwrotnej.
Dziękujemy.

This message, including any attachments hereto,
may contain privileged or confidential information and is sent
solely for the attention and use of the intended addressee(s).
If you are not an intended addressee, you may neither use this
message nor copy or deliver it to anyone. In such case, you
should immediately destroy this message and kindly notify the
sender by reply email. Thank you.

