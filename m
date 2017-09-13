Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 240E0E00C62; Wed, 13 Sep 2017 04:51:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0552E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 04:51:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id BBB23861B3;
	Wed, 13 Sep 2017 11:51:37 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 4exdryHGwGvq; Wed, 13 Sep 2017 11:51:29 +0000 (UTC)
Received: from [127.0.0.1] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net
	[92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 7FE8F860E2;
	Wed, 13 Sep 2017 11:51:21 +0000 (UTC)
To: Aaron Schwartz <aaron.schwartz@logicsupply.com>,
	yahia farghaly <yahiafarghaly@gmail.com>, mickey.happygolucky@gmail.com
References: <CABFXn3Gk6wMmARf5UMgdJpsCRDbhWOEfwZvhw96b3=-oa21C0g@mail.gmail.com>
	<CACMwXoXzB7ucvzFo1Ai4nNypb_+XMfVk0R+cB4oxSuHsV8jBOQ@mail.gmail.com>
	<CABFXn3FX6Jx=svzTv_91Hrq7E50j1+5sQYojr_6iuuT=0z4-Mg@mail.gmail.com>
	<CAP3gWc_i72Nnb7FWUdaRYufOn-uMVvpUcVEF686ObH1ZSH7dQg@mail.gmail.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <949f4667-0869-6a30-3fff-92cffb410c71@dynamicdevices.co.uk>
Date: Wed, 13 Sep 2017 12:51:19 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAP3gWc_i72Nnb7FWUdaRYufOn-uMVvpUcVEF686ObH1ZSH7dQg@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to execute bitbake menuconfig from ssh server
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
X-List-Received-Date: Wed, 13 Sep 2017 11:51:41 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB

Hi Yahia,

On 13/09/2017 12:24, Aaron Schwartz wrote:
> Tmux [0] also works well for this, and I've never tried it with Screen 
> (a similar utility) so here's instructions using Tmux:
>
> You need to install Tmux on the server you are using SSH to connect 
> to, then as soon as you SSH into the server run `$ tmux`.  Then when 
> you run `$ bitbake -c menuconfig ...` it will automatically open a 
> second pane on the bottom half of your screen where you can edit your 
> kernel config.  That pane will close automatically when you exit the 
> menuconfig application.
>
> I hope that helps!
> Aaron
>
>
>

I mostly remote into my server via SSH too. And I use the screen method 
to run menuconfig and devshell and so forth. Works well.

As Yusuke says you can install screen on the server (if it is Ubuntu or 
similar) if you need to with

$ sudo apt install screen

You might need to tell the bitbake tooling to use the screen utility 
which you can do with something like

$ export  OE_TERMINAL=screen

I see there are some notes here

https://books.google.co.uk/books?id=yNi6BwAAQBAJ&pg=PA35&lpg=PA35&dq=yocto+OE_TERMINAL+screen&source=bl&ots=HYab5gQgCg&sig=-qLFfrNLtglXCKwagcbU2Uqg1WM&hl=en&sa=X&ved=0ahUKEwie667diqLWAhUkLcAKHfXDBZwQ6AEIQzAD#v=onepage&q=yocto%20OE_TERMINAL%20screen&f=false

...

I hadn't heard of tmux. Thanks Aaron - I will have a look into that...

...

Sometimes I need a graphical environment. For example when I want to run 
up a Yocto Poky build for testing on a QEmu emulated machine easily.

For this I have VNC Server installed on the build box. I then run this 
up and it creates a new desktop. Your default desktop is usually :0 and 
in my case VNC then creates a :1 desktop

This usually ends up on build box local port 5901 as I recall (if not it 
will be a similar number, you can check with netstat -anp)

You can then port forward the VNC TCP port 5901 over SSH and use a VNC 
client on your client local port.

I often use Windows as a client so use Putty for the port forwarding and 
TightVNC for the VNC client.

This could well sound quite fiddly but it's fine when you get it setup.

There are some notes here which might be useful

https://www.theurbanpenguin.com/creating-an-ssh-tunnel-with-putty-to-secure-vnc/

Cheers,

Alex


