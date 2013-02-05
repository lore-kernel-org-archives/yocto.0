Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCB3BE0146D
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 04:44:55 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C91E0F811F4; Tue,  5 Feb 2013 05:44:54 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 10030F811F3;
	Tue,  5 Feb 2013 05:44:54 -0700 (MST)
Message-ID: <5110FEC9.5070100@mlbassoc.com>
Date: Tue, 05 Feb 2013 05:44:57 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: pulseaudio madness
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
X-List-Received-Date: Tue, 05 Feb 2013 12:44:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a multi-media application/system (built with Poky/Yocto of course)
that is currently using ALSA for the sound.  This works great but now
I'd like to be able to share some of the sound resources, in particular
the audio output (speakers).  To satisfy this, I looked at pulseaudio,
but I'm overwhelmed by the package choices (there are 120 packages),
not to mention what to do about configuration.

I don't see any examples (images, etc) that use pulseaudio.

Does anyone have any recommendations on what I might need to install,
how to configure it, etc, to take over from my simple ALSA setup?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

