Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E82B2E00B04; Thu, 15 Oct 2015 08:09:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B583E00978
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 08:09:40 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7B12BF811DB; Thu, 15 Oct 2015 09:09:39 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E1553F811D7;
	Thu, 15 Oct 2015 09:09:38 -0600 (MDT)
To: yocto@yoctoproject.org
References: <CAP2S6e4fF+JnZOhcyve8ACOWaNxbR6ZFLoyozR-4h57BOtiWCw@mail.gmail.com>
	<1d2fa93691cbe45f921e507c15f78dca.squirrel@webmail.xmsnet.nl>
	<CAF3SDA4=VmqYw7J3M2nR7cNfCEWZfvqTNP4ifnQJdAoxJ_NxCQ@mail.gmail.com>
	<CAP2S6e62xwV-sOU2xChjHZ0r7u6gtq16ArfQdqgw-rsSLxs2Lw@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <561FC1DA.2040500@mlbassoc.com>
Date: Thu, 15 Oct 2015 09:10:18 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAP2S6e62xwV-sOU2xChjHZ0r7u6gtq16ArfQdqgw-rsSLxs2Lw@mail.gmail.com>
Subject: Re: how to deploy gdbserver ?
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
X-List-Received-Date: Thu, 15 Oct 2015 15:09:44 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-10-15 08:39, Valentin Le bescond wrote:
> Hello
>
> I believe tools-debug works but unfortunately I have errors building libaio and other stuff (it says "tmp/sysroots/raspberrypi/usr/include/gnu/stubs.h:10:29: fatal error:
> gnu/stubs-hard.h: No such file or directory")

Can you send more details about this error (what version of Yocto meta-data you are using, etc)?
I just built this for the RaspberryPi and RaspberryPi2 using Poky/Yocto master (jethro) with no problems.

>
> Anyway, to stick with the initial question, thanks !
>
>
> Le jeu. 15 oct. 2015 à 15:58, Daniel. <danielhilst@gmail.com <mailto:danielhilst@gmail.com>> a écrit :
>
>     Works fine with emacs also.
>
>     2015-10-15 10:44 GMT-03:00 <winfried.dobbe@xmsnet.nl <mailto:winfried.dobbe@xmsnet.nl>>:
>
>         > Hi everyone,
>         >
>         > I want to be able to debug my target machine (raspberrypi) remotely
>         > through
>         > qtcretor on host.
>         >
>         > I can't seem to find a way to deploy the gdbserver software though.
>         > I built the gdb-cross-arm but don't see any gdbserver on the target with
>         > hob (poky 1.7.2) ?
>         >
>         > What am I missing ?
>
>         When I build my image with
>
>         EXTRA_IMAGE_FEATURES += "tools-debug"
>
>         both gdb and gdbserver are installed in the target rootfs. Remote
>         debugging worked out-of-the-box with QtCreator.
>
>
>
>
>
>         --
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>     --
>     /"Do or do not. There is no try"/
>     ///*Yoda Master*/
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Valentin LE BESCOND
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

