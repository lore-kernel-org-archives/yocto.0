Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E909E01341
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 09:13:04 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id BAC92166025C; Thu, 20 Oct 2011 10:13:02 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 15E716AACA0;
	Thu, 20 Oct 2011 10:13:02 -0600 (MDT)
Message-ID: <4EA0488E.5080009@mlbassoc.com>
Date: Thu, 20 Oct 2011 10:13:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Jack Mitchell <ml@communistcode.co.uk>
References: <4EA025EF.8020008@communistcode.co.uk>
In-Reply-To: <4EA025EF.8020008@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sysprof build error
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
X-List-Received-Date: Thu, 20 Oct 2011 16:13:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-20 07:45, Jack Mitchell wrote:
> I have been sucessfully compiling using the git master branch of poky for the past month or so. I switched branches to Edison yesterday so I would be working with the stable branch
> instead and now I cannot compile my build.
>
> I am currently getting errors with sysprof, however if I clean the shared state of sysprof I then get errors with Avahi, so I then clean shared state of Avahi and it goes back to
> sysprof errors. Anyway, my error log is as shown below:
>
> http://pastebin.com/j5vf6wzj
>
> I have tried cleaning and recompiling glib-2.0 due to this error:
>
> | mnt/yocto/poky/qemuarm-toolchain/tmp/sysroots/qemuarm/usr/lib/libgtk-x11-2.0.so: undefined reference to `g_datalist_get_data'
>
> Which I believe is glib related, however this might not be the fundamental error?
>
> Anyway, any help would be appreciated!

Did you try a totally clean build?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

