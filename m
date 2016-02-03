Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF306E009EA; Wed,  3 Feb 2016 06:49:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70119E00951
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 06:49:48 -0800 (PST)
Received: from comp-006-thk (unknown [31.182.60.238])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id C97582D7295;
	Wed,  3 Feb 2016 15:49:45 +0100 (CET)
Message-ID: <1454510985.3990.8.camel@open-rnd.pl>
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: shubham.kumar4@wipro.com, yocto@yoctoproject.org
Date: Wed, 03 Feb 2016 15:49:45 +0100
In-Reply-To: <SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
References: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
	<SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
Organization: Open-RnD sp. z o.o.
X-Mailer: Evolution 3.18.4 (3.18.4-1.fc23) 
Mime-Version: 1.0
Subject: Re: [meta-intel]:Quark not accepting "root" username at login prompt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maciej.borzecki@open-rnd.pl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Feb 2016 14:49:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On śro, 2016-02-03 at 14:00 +0000, shubham.kumar4@wipro.com wrote:
> 
> Hi all,
> 
> I would additionally like to mention that the same problem persists when trying to boot
> the Galileo with core-image-sato. 
> The steps which I followed are as follows:-
> Inside the poky directory,
> 
> 1.  source oe-init-build-env final_build/ 
> Now ,Inside the final_build/ directory
> 
> 2. bitbake core-image-sato
> 
> 3. wic create mkgalileodisk -e core-image-sato -o /<directory_path>/
> 
> Now, in <directory_path>/build ,
> 
> 4. sudo dd if=mkgalileodisk-201602031847-mmcblk0.direct of=/dev/sdb
> 
> Now when I tried to boot the Galileo with this SD card , it booted but at the login
> prompt doesn't accept the "root". It says  "Login incorrect ".
> 
> The observation is similar wit core-image-minimal as well.
> 
> I'm definitely missing something. I would appreciate any help in this direction.
> 
> 
> Thanks,
> Shubham_K
> 
> From: Shubham Kumar (Product Engineering Service)
> Sent: Wednesday, February 3, 2016 5:11 PM
> To: yocto@yoctoproject.org
> Subject: [meta-intel]:Quark not accepting "root" username at login prompt
>  
> Hi all,
> 
> I built a core-image-minimal with additions of a few packages like tools-sdk and tools-
> debug. With WIK tool and the kickstart file "mkgalileodisk", I created the image. Then I
> dd'd the image to the SD card. The Galileo booted with the image, but it's not accepting
> "root" as the username at the login terminal. It shows the message "Invalid username". I
> don't have any idea of why this happened. I even looked at the etc/passwd file, but
> didn't get any idea.
> Please note that I have cloned the latest jethro meta-intel layer from the Yocto git
> repository.
> 
> Did I miss anything in the build process? Any help in this direction will be
> appreciated.

Can you verify if debug-tweaks is present in IMAGE_FEATURES?

-- 
Maciej Borzęcki
Senior Software Developer at Open-RnD Sp. z o.o., Poland
www.open-rnd.pl
mobile: +48 889 117 365, fax: +48 42 657 9079

Niniejsza wiadomość wraz z załącznikami może zawierać chronione prawem
lub poufne informacje i została wysłana wyłącznie do wiadomości i
użytku osób, do których została zaadresowana. Jeśli wiadomość została
otrzymana przypadkowo zabrania się jej kopiowania lub rozsyłania do
osób trzecich. W takim przypadku uprasza się o natychmiastowe
zniszczenie wiadomości oraz poinformowanie nadawcy o zaistniałej
sytuacji za pomocą wiadomości zwrotnej. Dziękujemy.

This message, including any attachments hereto, may contain privileged
or confidential information and is sent solely for the attention and
use of the intended addressee(s). If you are not an intended addressee,
you may neither use this message nor copy or deliver it to anyone. In
such case, you should immediately destroy this message and kindly notify
the sender by reply email. Thank you.




