Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 301B2E0132F
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2011 06:45:28 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id CB20416608BA; Wed,  5 Oct 2011 07:45:25 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0E8C01660836;
	Wed,  5 Oct 2011 07:45:25 -0600 (MDT)
Message-ID: <4E8C5F74.3080205@mlbassoc.com>
Date: Wed, 05 Oct 2011 07:45:24 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: "Vellemans, Noel" <Noel.Vellemans@visionBMS.com>
References: <1531E53627F1F749B4FE809BF2A4EB6702B13551@WETMEX10.loepfe.com>
In-Reply-To: <1531E53627F1F749B4FE809BF2A4EB6702B13551@WETMEX10.loepfe.com>
Cc: yocto@yoctoproject.org
Subject: Re: Sato Font-shadow ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Oct 2011 13:45:28 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2011-10-05 07:40, Vellemans, Noel wrote:
>
> Hi all
>
>
> I've build the beta-test build [wget _http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-f8cddd74574756174a82c856cecdeb6f83b9dea5.tar.bz2_] { core-image-sato }
>
> The build succeeds but there is 'STRANGE' thing, the fonts seem to contain a shadow, this shadow color is not always the same color (sometimes it is red, or red.. or whatever
> combination).
>
> The best place where you can see it is on the CLOCK that is displayed on the top of the screen, another place where you can see it is when you open a terminal window.
>
> Anyone that has seen the same behavior ?
> Where do I start looking ?
>
> Regards Noel
>
> NOTE: If I do replace the rootfs with one from the yocto web-site… this faultly-'shadow'-behavoir is gone.

What's your hardware platform?  I saw this on a BeagleBoard [equivalent]
due to improper video settings.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

