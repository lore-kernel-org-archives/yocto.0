Received: from ciao.gmane.io (ciao.gmane.io [159.69.161.202])
 by mx.groups.io with SMTP id smtpd.web11.368.1586017143945375112
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Apr 2020 09:19:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 159.69.161.202, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1jKlVe-000QOk-5P
	for yocto@lists.yoctoproject.org; Sat, 04 Apr 2020 18:19:02 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: "Gmane Admin" <gley-yocto@m.gmane-mx.org>
Subject: Re: Compressing btrfs image
Date: Sat, 4 Apr 2020 18:18:57 +0200
Message-ID: <fddd7a81-f6a6-b37c-9890-8aeb8cfbf11a@gmail.com>
References: <f3c697f3-7689-eb9a-93e0-c3941ac24142@outlook.com>
 <VI1PR05MB4286D0C01EDE9E7058FD91D8A8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Mime-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <VI1PR05MB4286D0C01EDE9E7058FD91D8A8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Op 28-03-2020 om 21:06 schreef Konrad Weihmann:
> AFAIK there is no way to mount something without root credentials.

You can loop mount the image file using udisksctl as an ordinary user, 
which mounts the image under /media/<user name>.

> fakeroot/pseudo is intercepting some calls before they will reach the 
> kernel, but mounting isn't a supported option - it just makes all child 
> processes think they running under uid 0.
> 
> What you could do is try to find an option 
> (https://btrfs.wiki.kernel.org/index.php/Manpage/mkfs.btrfs) which does 
> what you want directly while creating the image.
> 
> These options should go then to a variable called EXTRA_IMAGECMD.
> 
> 
> On 28.03.20 16:30, Edson Seabra wrote:
>> Hi all.
>>
>> I'm trying to compress a btrfs rootfs

I wanted to take a snap shot, see this thread:
"How to create a btrfs snapshot in the rootfs image (during build)?"

I found you need to be owner of the root directory of the image, but 
there is no option to mkfs that with btrfs.
The only route for that I found was create and ext4 image with
'-E root_owner'  then btrfs-convert.

But then I found there is no way to 'btrfs send' without becoming root...

See also "Howto take a snapshot from an image as ordinary user?" on lkml.

>> I added  in "image_types.bbclass:IMAGE_CMD_btrfs ()" two commands:
>>
>> 1) mount the btrfs image after mkfs.btrfs
>> 2) btrfs filesystem defrag + compress option
>>
>> But the command mount fails:
>>
>> mount: 
>> /home/edson/ng-trunk/nodegrid/tmp/work/genericx86_64-poky-linux/nodegrid/1.0-r0/deploy-nodegrid-image-complete/temp_btrfs: 
>> failed to setup loop device for 
>> /home/edson/ng-trunk/nodegrid/tmp/work/genericx86_64-poky-linux/nodegrid/1.0-r0/deploy-nodegrid-image-complete/nodegrid-genericx86-64-20200328134151.rootfs.btrfs.
>>
>> I saw in image.bbclass the creation of do_image_btrfs task with flag 
>> 'fakeroot'.
>>
>> ====== image.bbclass ====
>>         task = "do_image_%s" % t.replace("-", "_").replace(".", "_")
>>
>>         d.setVar(task, '\n'.join(cmds))
>>         d.setVarFlag(task, 'func', '1')
>>         d.setVarFlag(task, 'fakeroot', '1')
>> =======================
>>
>> would the fakeroot flag allow do_image_btrfs execute commands that 
>> requires root privilege ?
>>
>> If not what would be the way to execute the mount command ?
>>
>> I tried "pseudo mount" but it failed same way...
>>
>> Thanks in advance.
>>
>> Edson.
>>
>> *Edson Seabra*
>>
>> Principal Engineer
>>
>> M +1 510 579 0843
>>
>> *E *edson.seabra@zpesystems.com 
>> <mailto:alvin.chan@zpesystems.com>
>>
>> 1506169147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c90-8c28-e559c26bc7d1.png
>> 46757 Fremont Blvd., Fremont, CA 94538
>> *zpesystems.com* <https://www.zpesystems.com/>* | **Request a Nodegrid 
>> Demo <https://www.zpesystems.com/demo/>*
>>
>>
> 
> 
> 


