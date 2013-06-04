Return-Path: <ml@communistcode.co.uk>
Received: from owm.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7B30E014A1
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 05:04:17 -0700 (PDT)
Message-ID: <51ADD7C0.60707@communistcode.co.uk>
Date: Tue, 04 Jun 2013 13:04:16 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1306040727200.4915@oneiric>
In-Reply-To: <alpine.DEB.2.02.1306040727200.4915@oneiric>
Subject: Re: anyone building for the arrow sockit eval board?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Jun 2013 12:04:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/13 12:32, Robert P. J. Day wrote:
>
>    that's this board:
>
> http://www.rocketboards.org/foswiki/Documentation/ArrowSoCKitEvaluationBoard
>
> there's an alleged page for downloading an appropriate layer here:
>
> http://www.rocketboards.org/foswiki/Documentation/GitGettingSTarted#Yocto_Project
>
> with the instructions:
>
> $ git clone http://git.rocketboards.org/poky-socfpga.git
> $ cd  poky-socfpga/
> $ git checkout -b <test_branch_name> origin/danny-altera
> $ source ./altera-init build
> $ bitbake virtual/kernel virtual/bootloader altera-image
>
> but those instructions clearly won't work as that checkout doesn't
> include the script "altera-init" and doesn't define an "altera-image".
>
>    there's a much larger downloadable image called
> "linux-socfpga-13.02-RC10-src.bsx", but it's well over 800M and is
> defined to contain *everything* you need to build (that's all the
> source and everything), but i don't want to go down that road as i'm
> pretty sure i have most of the source.
>
>    so is there, in fact, a valid meta-altera(?) layer of some kind that
> defines the machine, image(s) and recipes for the arrow sockit board,
> without cluttering the download with 800M+ of extraneous junk? thanks.
>
> rday
>

Hi Robert,

I recently went on a training day with EVB (at Altera offices) and they 
said the only supported method was through the Altera downloads and 
rocketboards community site, for there dev board. They were not aware of 
any 'meta-altera' layer (which is madness).

I am attending an Arrow training day in the coming weeks (where they 
give this board out for free) so it will be interesting to see if you 
get anywhere with this as I will be incorporating my own distro, and as 
such need a fully layered approach.

If you still need me to ask any questions in a couple of weeks I will do 
so for you.

Cheers,
Jack.

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--

