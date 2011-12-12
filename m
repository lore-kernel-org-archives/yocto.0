Return-Path: <bewithsathish@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45584E0127D
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2011 21:20:21 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by dadi14 with SMTP id i14so6655306dad.35
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2011 21:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=rqhGWaI3nNaeHq31g6u2YVobojzYMugaSEHVY/5XAcU=;
	b=GkqjrJriLcVQETXRRGmfY08WoU5ABR7zIusnr87KPjh5BXjMHc6BmJRvXd9Odcn9pg
	SOCdGxmpo7I0gwMZqScY1goDcdvw0mvN1w7T7PkrJgYUmBMLK8R3fIsi6zh6sXkRZeM/
	WvNAg8F6vlpzVaro726YFRLu1Of4LHuMQRIjk=
MIME-Version: 1.0
Received: by 10.68.72.198 with SMTP id f6mr19163576pbv.6.1323667220877; Sun,
	11 Dec 2011 21:20:20 -0800 (PST)
Received: by 10.68.48.227 with HTTP; Sun, 11 Dec 2011 21:20:20 -0800 (PST)
In-Reply-To: <4EE263A1.4080604@linux.intel.com>
References: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
	<4EE132C5.6040007@linux.intel.com>
	<CANJvwR-GVN+=JaS29oxmGM6mr-D6ncv+vsyVT2OaT+vOEaU8qA@mail.gmail.com>
	<4EE1957E.1060506@linux.intel.com>
	<CANJvwR9dvuxk8Mz_67igs2cge5LY=mi4PnnaKocQSmPF3kL95Q@mail.gmail.com>
	<4EE263A1.4080604@linux.intel.com>
Date: Mon, 12 Dec 2011 10:50:20 +0530
Message-ID: <CANJvwR-T-6a4ofVw7GYF8x9DeJuW0VDyO+rQNCUgrRKio2xKHg@mail.gmail.com>
From: Sathishkumar Duraisamy <bewithsathish@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: HOB usage
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
X-List-Received-Date: Mon, 12 Dec 2011 05:20:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Today, I tried to reproduce the problem and magically, today, hob
works as expected.  So, I started once again with new config, and
again I tried to reproduce the problem. But the problem exists.

The reason for this, once we select our images in the
edit->preference, it writes our preference in the file hob-post.conf
file. But it doesn't parses it again unless we are restarting the hob
again.

Here are some code snippets that it confirms this:

In file scripts/hob,

#hob is started with reading these files.
bitbake -r conf/hob-pre.conf -R conf/hob-post.conf -u hob

In file poky-edison-6.0/bitbake/lib/bb/ui/hob.py

    def preferences_cb(self, action):
        resp = self.prefs.run()
        self.prefs.write_changes()
        self.prefs.hide()

which ultimately, calls poky-edison-6.0/bitbake/lib/bb/ui/crumbs/configrator.py

    def writeConfFile(self, conffile, contents):
        """
        Make a backup copy of conffile and write a new file in its stead with
        the lines in the contents list.
        """
        # Create a backup of the conf file
        bkup = "%s~" % conffile
        os.rename(conffile, bkup)

        # Write the contents list object to the conf file
        with open(conffile, "w") as new:
            new.write("".join(contents))


Here it just writes, but never parses it again. So, unless, we close
and restart hob, preferences doesn't take change.

So, have to fix this, to ask to parses it again once the changes are written.

-- 
Regards,
Sathishkumar D
http://flowersopenlab.weebly.com/

