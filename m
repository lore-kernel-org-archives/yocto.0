Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5169E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 07:25:13 -0800 (PST)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id DECE326A51
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 14:51:26 +0000 (GMT)
Message-ID: <4F0DA9A5.7080907@communistcode.co.uk>
Date: Wed, 11 Jan 2012 15:24:21 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DA377.9090903@windriver.com>
	<CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com>
In-Reply-To: <CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com>
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Wed, 11 Jan 2012 15:25:14 -0000
Content-Type: multipart/alternative;
	boundary="------------010504040202030700020900"

--------------010504040202030700020900
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/12 15:20, Brian Hutchinson wrote:
> On Wed, Jan 11, 2012 at 9:57 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>> It will. I sent patches recently to make that the preferred version
>> in the master branch. Cherry picking that change would probably
>> be all you would need.
>>
>>
>>> 2.  Is the example for setting up for kernel modification in the
>>> development manual still valid for Edison?
>>
>> Should be.
>>
> Would I get that change if I just did a git pull or do I have to do
> something else?  I did a git pull to update my Edison checkout last
> night realizing that I hadn't done one in a while and then ran a new
> clean build and still ran into the same problem.  After triple
> checking my work I figured it was time to post.
>
> Regards,
>
> Brian
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I can chime in here. I am currently trying to get my Beagleboard running 
on the master branch, and it is pulling in kernel 3.0.12. However I 
cannot get it to boot, I get as far as here:

*Texas Instruments X-Loader 1.5.0 (Jan 11 2012 - 14:06:12)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jan 11 2012 - 14:15:11)

OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #0ed800229ff800000163810c15007017
Hit any key to stop autoboot:  0
SD/MMC found on device 0
reading uEnv.txt

** Unable to read "uEnv.txt" from mmc 0:1 **
reading uImage

3106580 bytes read
Booting from mmc ...
## Booting kernel from Legacy Image at 82000000 ...
    Image Name:   Linux-3.0.12-yocto-standard+
    Image Type:   ARM Linux Kernel Image (uncompressed)
    Data Size:    3106516 Bytes = 3 MiB
    Load Address: 80008000
    Entry Point:  80008000
    Verifying Checksum ... OK
    Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.

*Where it hangs and won't go any further. I am watching it over serial 
using a baud rate of 115200. It's a bit worrying that uBoot doesn't pick 
up the Beagle revision... I'm sure it used to when I was doing testing a 
few months ago.

Cheers,
Jack.


--------------010504040202030700020900
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 11/01/12 15:20, Brian Hutchinson wrote:
    <blockquote
cite="mid:CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com"
      type="cite">
      <pre wrap="">On Wed, Jan 11, 2012 at 9:57 AM, Bruce Ashfield
<a class="moz-txt-link-rfc2396E" href="mailto:bruce.ashfield@windriver.com">&lt;bruce.ashfield@windriver.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">It will. I sent patches recently to make that the preferred version
in the master branch. Cherry picking that change would probably
be all you would need.


</pre>
        <blockquote type="cite">
          <pre wrap="">2. &nbsp;Is the example for setting up for kernel modification in the
development manual still valid for Edison?
</pre>
        </blockquote>
        <pre wrap="">

Should be.

</pre>
      </blockquote>
      <pre wrap="">
Would I get that change if I just did a git pull or do I have to do
something else?  I did a git pull to update my Edison checkout last
night realizing that I hadn't done one in a while and then ran a new
clean build and still ran into the same problem.  After triple
checking my work I figured it was time to post.

Regards,

Brian
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <tt><br>
      I can chime in here. I am currently trying to get my Beagleboard
      running on the master branch, and it is pulling in kernel 3.0.12.
      However I cannot get it to boot, I get as far as here:<br>
      <br>
      <b>Texas Instruments X-Loader 1.5.0 (Jan 11 2012 - 14:06:12)<br>
        Beagle xM<br>
        Reading boot sector<br>
        Loading u-boot.bin from mmc<br>
        <br>
        <br>
        U-Boot 2011.06 (Jan 11 2012 - 14:15:11)<br>
        <br>
        OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz<br>
        OMAP3 Beagle board + LPDDR/NAND<br>
        I2C:&nbsp;&nbsp; ready<br>
        DRAM:&nbsp; 512 MiB<br>
        NAND:&nbsp; 0 MiB<br>
        MMC:&nbsp;&nbsp; OMAP SD/MMC: 0<br>
        *** Warning - readenv() failed, using default environment<br>
        <br>
        In:&nbsp;&nbsp;&nbsp; serial<br>
        Out:&nbsp;&nbsp; serial<br>
        Err:&nbsp;&nbsp; serial<br>
        Beagle unknown 0x02<br>
        No EEPROM on expansion board<br>
        Die ID #0ed800229ff800000163810c15007017<br>
        Hit any key to stop autoboot:&nbsp; 0<br>
        SD/MMC found on device 0<br>
        reading uEnv.txt<br>
        <br>
        ** Unable to read "uEnv.txt" from mmc 0:1 **<br>
        reading uImage<br>
        <br>
        3106580 bytes read<br>
        Booting from mmc ...<br>
        ## Booting kernel from Legacy Image at 82000000 ...<br>
        &nbsp;&nbsp; Image Name:&nbsp;&nbsp; Linux-3.0.12-yocto-standard+<br>
        &nbsp;&nbsp; Image Type:&nbsp;&nbsp; ARM Linux Kernel Image (uncompressed)<br>
        &nbsp;&nbsp; Data Size:&nbsp;&nbsp;&nbsp; 3106516 Bytes = 3 MiB<br>
        &nbsp;&nbsp; Load Address: 80008000<br>
        &nbsp;&nbsp; Entry Point:&nbsp; 80008000<br>
        &nbsp;&nbsp; Verifying Checksum ... OK<br>
        &nbsp;&nbsp; Loading Kernel Image ... OK<br>
        OK<br>
        <br>
        Starting kernel ...<br>
        <br>
        Uncompressing Linux... done, booting the kernel.<br>
        <br>
      </b>Where it hangs and won't go any further. I am watching it over
      serial using a baud rate of 115200. It's a bit worrying that uBoot
      doesn't pick up the Beagle revision... I'm sure it used to when I
      was doing testing a few months ago.<br>
      <br>
      Cheers,<br>
      Jack.<br>
      <br>
    </tt>
  </body>
</html>

--------------010504040202030700020900--
