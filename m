Return-Path: <ml@communistcode.co.uk>
Received: from owm.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13FE8E014F1
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 05:26:13 -0700 (PDT)
Message-ID: <51ADDCE1.9020400@communistcode.co.uk>
Date: Tue, 04 Jun 2013 13:26:09 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1306040727200.4915@oneiric>
	<51ADD7C0.60707@communistcode.co.uk>
	<alpine.DEB.2.02.1306040814300.5416@oneiric>
In-Reply-To: <alpine.DEB.2.02.1306040814300.5416@oneiric>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 04 Jun 2013 12:26:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/13 13:22, Robert P. J. Day wrote:
> On Tue, 4 Jun 2013, Jack Mitchell wrote:
>
>> On 04/06/13 12:32, Robert P. J. Day wrote:
>>>
>>>     that's this board:
>>>
>>> http://www.rocketboards.org/foswiki/Documentation/ArrowSoCKitEvaluationBoard
>>>
>>> there's an alleged page for downloading an appropriate layer here:
>>>
>>> http://www.rocketboards.org/foswiki/Documentation/GitGettingSTarted#Yocto_Project
>>>
>>> with the instructions:
>>>
>>> $ git clone http://git.rocketboards.org/poky-socfpga.git
>>> $ cd  poky-socfpga/
>>> $ git checkout -b <test_branch_name> origin/danny-altera
>>> $ source ./altera-init build
>>> $ bitbake virtual/kernel virtual/bootloader altera-image
>>>
>>> but those instructions clearly won't work as that checkout doesn't
>>> include the script "altera-init" and doesn't define an "altera-image".
>>>
>>>     there's a much larger downloadable image called
>>> "linux-socfpga-13.02-RC10-src.bsx", but it's well over 800M and is
>>> defined to contain *everything* you need to build (that's all the
>>> source and everything), but i don't want to go down that road as i'm
>>> pretty sure i have most of the source.
>>>
>>>     so is there, in fact, a valid meta-altera(?) layer of some kind that
>>> defines the machine, image(s) and recipes for the arrow sockit board,
>>> without cluttering the download with 800M+ of extraneous junk? thanks.
>>>
>>> rday
>>>
>>
>> Hi Robert,
>>
>> I recently went on a training day with EVB (at Altera offices) and
>> they said the only supported method was through the Altera downloads
>> and rocketboards community site, for there dev board. They were not
>> aware of any 'meta-altera' layer (which is madness).
>>
>> I am attending an Arrow training day in the coming weeks (where they
>> give this board out for free) so it will be interesting to see if
>> you get anywhere with this as I will be incorporating my own distro,
>> and as such need a fully layered approach.
>>
>> If you still need me to ask any questions in a couple of weeks I
>> will do so for you.
>
>    over the last couple of hours, i've got a lot of it figured out.
> i've started (unsurprisingly :-) to document everything here:
>
> http://www.crashcourse.ca/wiki/index.php/Arrow_SoCKit
>
>    the web page that suggests there is a separate layer:
>
> http://www.rocketboards.org/foswiki/Documentation/GitGettingSTarted#Yocto_Project
>
> seems pretty clearly incorrect, but if you download the monstrous .bsx
> file and install it, then run the install_altera_socfpga_src.sh script
> that you get inside that, that produces another directory with
> contents:
>
> -rwxrwxr-x  1 rpjday rpjday  1547 Mar 27 17:01 altera-init
> drwxrwxr-x  6 rpjday rpjday  4096 Oct 26  2012 bitbake
> drwxrwxr-x 11 rpjday rpjday  4096 Mar 27 17:01 documentation
> -rw-rw-r--  1 rpjday rpjday   545 Oct 26  2012 LICENSE
> drwxrwxr-x 21 rpjday rpjday  4096 Oct 31  2012 meta
> drwxrwxr-x  9 rpjday rpjday  4096 Apr  5 15:20 meta-altera
> drwxrwxr-x  4 rpjday rpjday  4096 Oct 31  2012 meta-hob
> drwxrwxr-x 10 rpjday rpjday  4096 Mar 27 17:01 meta-linaro
> drwxrwxr-x  5 rpjday rpjday  4096 Mar 27 17:01 meta-skeleton
> drwxrwxr-x  6 rpjday rpjday  4096 Oct 31  2012 meta-yocto
> drwxrwxr-x  9 rpjday rpjday  4096 Mar 27 17:01 meta-yocto-bsp
> -rwxrwxr-x  1 rpjday rpjday  1531 Oct 31  2012 oe-init-build-env
> -rw-rw-r--  1 rpjday rpjday  2038 Oct 31  2012 README
> -rw-rw-r--  1 rpjday rpjday 17245 Oct 31  2012 README.hardware
> drwxrwxr-x  8 rpjday rpjday  4096 Mar 27 17:01 scripts
>
> so that's looking a lot more promising. i'm guessing all the content
> is there, it's just a bit disorganized. as you can see, there *is* a
> meta-altera layer, but it's accompanied by a bunch of other layers
> which i suspect could be pruned, so my goal today is to strip out
> everything but the minimal meta-altera content and combine it with all
> the layers i already have.
>
>    stay tuned ...
>
> rday
>

The interesting ones in there are meta-altera and meta-linaro; it would 
also be interesting to see if anything else is modified or if it is 
vanilla Yocto. I have a sinking feeling it may not be... mainly due to 
the tightly coupled DT and socfpga implementation with the Altera tools.

Could you post the altera-init script; I would imagine that hides the 
demons ;)

Cheers,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--

