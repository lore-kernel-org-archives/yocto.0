Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A203FE004E4
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2011 06:53:32 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 8006C16601A1; Fri, 30 Sep 2011 07:53:31 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id CAB5C166019E;
	Fri, 30 Sep 2011 07:53:30 -0600 (MDT)
Message-ID: <4E85C9DA.2040701@mlbassoc.com>
Date: Fri, 30 Sep 2011 07:53:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: "Vellemans, Noel" <Noel.Vellemans@visionBMS.com>
References: <1531E53627F1F749B4FE809BF2A4EB6702ADC4A9@WETMEX10.loepfe.com>
In-Reply-To: <1531E53627F1F749B4FE809BF2A4EB6702ADC4A9@WETMEX10.loepfe.com>
Cc: yocto@yoctoproject.org
Subject: Re: Virtual keyboard ?
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
X-List-Received-Date: Fri, 30 Sep 2011 13:53:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-09-30 07:31, Vellemans, Noel wrote:
> Hi all,
>
> I have a question where I can not find an direct answer to on the Yocto-web/wiki.
>
> I wonder if the Yocto-arm-sato build supports a device that has no-REAL keyboard but only a touch-screen.
>
> If so, does the VIRTUAL-keyboard pup-op automatically, if you touch something that is editable (like in android and/or meego) ?

Yes, this works fine.  You just need to set these in /etc/formfactor/machconfig:
   HAVE_TOUCHSCREEN=1
   HAVE_KEYBOARD=0

> NOTE : I've been playing with the Yocto-1.0 build into qemu and I do not find how to 'REMOVE' the virtual keyboard once it is visible on screen.

If it comes up by demand, it will go away when you press enter.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

