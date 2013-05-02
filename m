Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6896EE014FE
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 09:23:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8221FF811E7; Thu,  2 May 2013 10:23:01 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A3847F811EA;
	Thu,  2 May 2013 10:22:58 -0600 (MDT)
Message-ID: <518292E5.9030101@mlbassoc.com>
Date: Thu, 02 May 2013 10:23:01 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
	<CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
	<CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
	<CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
In-Reply-To: <CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Thu, 02 May 2013 16:23:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-05-02 09:52, Paul Barker wrote:
> On 2 May 2013 16:12, Trevor Woerner <twoerner@gmail.com> wrote:
>> - a separate tool (which will probably need to be run as root) is used
>> to actually format/create the SD device (using, say, sfdisk for
>> automation) this way the last partition can be specified as "use the
>> rest of the disk"
>> - this tool unpacks the requested/required {tar|rpm|deb|ipk}s onto the
>> SD device (some of which can come from outside the Yocto build system,
>> e.g. from using the SDK); this device already has its
>> formatting/partitions ready
>> - this tool could also handle setting up serial numbers, IP addresses, etc
>> - this tools also sets up the bootloader (if required)
>
> Sounds great though it may take a long time to copy files to an SD
> card (I noticed a similar opinion at
> http://www.raspbian.org/RaspbianInstaller). May be quicker to generate
> an image file with the correct size first then dd that to the card.

The problem with this approach is that the generated image will typically
be many gigabytes in size (typical SD cards are 4GB on up).  The time to
copy such an image to the physical card can be very large indeed.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

