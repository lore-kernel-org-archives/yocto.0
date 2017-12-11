Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E060E00D55; Mon, 11 Dec 2017 04:20:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 825CDE008FB
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 04:20:33 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id f206so13675578wmf.5
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 04:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=3UQbdVTGEYnTS9+FFA1PjLXJRr0X+sT2w0t3BGAmqJk=;
	b=RD2Ka3hcVmXppEAzrHNHNpieQK8QxMJOhg6PBApS2bz3eZyWbN1mjOGjKfOU9prUd4
	8htw/MXYmQqT9Ax5YAJgXRsd3D/1bQPLgsJCWk2Xskg900+OcbXr5KB9MNaskibY+XTi
	Qf38m7wOEHAjIHhWymITIBttBW4u8if1rJI3a3VPlek2kZdGLYD2vYmxAiVcOFmUe7T2
	IEqzHCP94lmY47bzRpZ8bArMZUo25uBjKn4sqqYXVYyTQzATdijpUtV0voDehwOuka/x
	DySxnMnLUYl4Ijg+XFSuCn1fH9k9Cl2MqFUOu82gcuUnhSSgT8oKWhhoqD5707Td5zCP
	cEdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=3UQbdVTGEYnTS9+FFA1PjLXJRr0X+sT2w0t3BGAmqJk=;
	b=p4kH1ZeFeuBGzg1daFelYTCunU0ZVfDAoeBes4Xh8MHrOcCy85Mz2t6J2C2I1S8SkY
	PgoUfhq7OzzgSsRFCK1aHeeyZOPyJXFn0hXhfyLWkc2lk/+gQoCQL6mSUgvMwBLUA8LP
	BSNHRQz9EQF97zpvZU2tYr6Ct4yQnCv5/PYFf/79MKzO0tyWkpqbwpDXy8yv/mxwzMLi
	UDepjFe7M155BtXH4yD+LfJ7CSRn/bWUbmu1w5ZW0Gou2Dp29Mp6d+0K2Ahyg75FUkm3
	N47MEU88WRU2WZ05J3oFaGMNdyrIDpsO2vSwlfehkiqNpmNMgfBm0E/I6+/Hgt/NHbZd
	ouNA==
X-Gm-Message-State: AKGB3mIJbqOC0swvQTBWP4suNlOwm8QOWXp4Xk5HfNs0Ah+LThTQbqyx
	W99KMMZWE3fYx7UEDEosbv1bg1h36JZ2cI8FatWgEQ==
X-Google-Smtp-Source: ACJfBos0031qHl31l7w1avromc46qT9qOALl33naSR0tWqQM/PMbrBNK1HUuFJDSsRfuNA/HW076FmVUQeH/xdKsJJQ=
X-Received: by 10.28.26.139 with SMTP id a133mr637909wma.90.1512994832303;
	Mon, 11 Dec 2017 04:20:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.199.199 with HTTP; Mon, 11 Dec 2017 04:20:31 -0800 (PST)
In-Reply-To: <CALw8SCXV1DotXLNLz3UH0Wswz6F-y=ZraT=e9HWtBWqbkqnzGg@mail.gmail.com>
References: <CAPyrkgyNO2D6rO0gHb5bvDDa_PHEqeVy5HwN4WP8qm4HQxkM3A@mail.gmail.com>
	<CALw8SCXV1DotXLNLz3UH0Wswz6F-y=ZraT=e9HWtBWqbkqnzGg@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Mon, 11 Dec 2017 12:20:31 +0000
Message-ID: <CAPyrkgxm5DAU+2X7nwSpENv7534e1gDzS3uA4BHq2SX2po8Z9Q@mail.gmail.com>
To: Mirza Krak <mirza.krak@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Layer documentation for meta-raspberrypi
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
X-List-Received-Date: Mon, 11 Dec 2017 12:20:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 11, 2017 at 12:08 PM, Mirza Krak <mirza.krak@gmail.com> wrote:
> 2017-12-11 12:55 GMT+01:00 Paul Barker <pbarker@toganlabs.com>:
>> Hi all,
>>
>> As a quick announcement, the layer documentation for meta-raspberrypi
>> is now available on Read the Docs:
>> http://meta-raspberrypi.readthedocs.io/en/latest/
>>
>> The latest documentation is shown by default and covers the master
>> branch. Using the version box in the bottom right corner of the page
>> you can also switch to the rocko or pyro versions. This is
>> automatically updated whenever changes are pushed to the documentation
>> in meta-raspberrypi.
>>
>> Raspberry Pi seems to be a very common platform for newcomers to
>> OE/Yocto and so I think it's really important that this layer is well
>> documented and is easy to use. Please submit pull requests or open
>> bugs if you think any of the documentation can be improved.
>>
>> We use Sphinx (http://www.sphinx-doc.org/) plus Read the Docs
>> (https://readthedocs.org/) integration for this which I think is a
>> pretty good setup for layer documentation in general. If anyone wants
>> more details so they can do something similar for another layer then
>> please let me know!
>
> Great work and this will definitely be appreciated by all the
> meta-raspberrypi users.
>
> One little thing though, the current "theme" used which I assume is
> the default Sphinx theme is not optimal IMO.
>
> readthedocs does apply its own default theme [1] if you do not provide
> one in your custom conf which looks much better (that is the look that
> docs.readthedocs.io has) which is easier to read and navigate. I
> believe that most developers are familiar with it as many other
> projects that host documentation on readthedocs use this theme
> (including the Linux kernel and more).
>
> [1]. http://docs.readthedocs.io/en/latest/theme.html?highlight=3Dtheme
>

Thanks for the feedback. The conf.py file we're using is just what was
generated by sphinx-quickstart with minimal tweaks. It sets html_theme
which is obviously overriding the default for read the docs.

I think I should be able to get the right behaviour by commenting out
the html_theme setting completely. I'll give that a go and see what
happens.

Cheers,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

