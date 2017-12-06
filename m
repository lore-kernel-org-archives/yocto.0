Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44C5EE00D86; Wed,  6 Dec 2017 10:55:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5656E00D84
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 10:55:19 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id m26so2693371pfj.11
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 10:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9/VUmlMAx+3Y0h9dV+0VGZYEZtwY+ndYIlJHl+cmivw=;
	b=CzWDH5S5DcULDh3H0OfWD9TIxiK7wkPQ+7dwjY5CW7OKqLj4a5A6Mn3PLIec+exERs
	Ugs+wmw6iHXZLPGJGztHRGyCJZ/D4eZDxJds4KOEVcPob1/JOg/QZAmScXwcXOL4ozsv
	fPaqvI4sem//9cEOKe05FwcOCPFl/9xP/bhQ1eAyiHoyMVaQGqj4IXJvNapnjg/rj0/W
	lye/Aysiz3Px2r3QfRSRbmOH32cBYPHj7QpG88QOXkyVPB++Kero3hjoPTMP7l2FXc/Z
	rzGWFQ+5RnnuKmviF6w87g8gUcxFo9R7YxIxO1+qefvPGOCYIqXwk7M7IBoFoIdOCD0d
	HNkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9/VUmlMAx+3Y0h9dV+0VGZYEZtwY+ndYIlJHl+cmivw=;
	b=ND9KQ+rQwFcy60nzmgF3q4aMiCxzNW2YPhX6lQpwIBBDwcjEVZt6TDTk9UQ4H+2169
	zaogKSZBrAukU/9tO6E9hGgrwJPKtfCQiKVDpt2TaSdVgkzeHbWlTunwniUaBPtcKESb
	41dPdH89WXvfHj7PzzEBuP+492IKqISfmyWESGVkk5LGEYwy+NFow1IRiO/JBNZ8japV
	FKay/Jiu6PIfpvrMtUmDeGGqktMLmPmRmPHgqvxyeF+ZzStb/RqWyw1sHnJlCpxvRCzl
	K6gafX1i2Yp0Aqmz7HEbHpZ080R2vk9NnOLDSGIgTVJ6yLx1t00BI7C/kGoUgwcrZ2Y0
	SXNw==
X-Gm-Message-State: AJaThX7w7TGbp6lhStXgvD7bAwFuPnuQNIoPnokvcAGfhHALFmw2ff5j
	jqIg9c+HhXvsvuJJ7tdYTzt1YEWUGsZ39AMmWRU=
X-Google-Smtp-Source: AGs4zMaVwmTr9fhY4ioYaZ6wLAxyDAMZh/CFqmTb201ee0tDlwtqbwXCpbv+5GCpUe7ocQcrPzpjwYXXrwxlYKmaWSE=
X-Received: by 10.159.194.1 with SMTP id x1mr23354425pln.48.1512586518888;
	Wed, 06 Dec 2017 10:55:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Wed, 6 Dec 2017 10:55:18 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Wed, 6 Dec 2017 19:55:18 +0100
Message-ID: <CAPb0b+P8X_pOpnqe1ThNh=ANz-d790gyhbT8O6hN+=Uy0jhSQg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [poky-tiny] [meta-raspberry] Create rpi-img from generated cpio archive
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
X-List-Received-Date: Wed, 06 Dec 2017 18:55:20 -0000
Content-Type: multipart/alternative; boundary="089e0828fda42685c3055fb07eae"

--089e0828fda42685c3055fb07eae
Content-Type: text/plain; charset="UTF-8"

hi yocto community,

i have been testing the poky-tiny with meta-raspberry pi, i successfully
compiled the kernel and all the underlying components, but the output is a
cpio archive.

However, the rpi-image has 2 partitions, a windows and linux partition. I
am now stopping at this point, where i need to generate the rpi-image
instead of the cpio.

any help is apprecitated, thanks in advance

regards,
Sherif

--089e0828fda42685c3055fb07eae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>hi yocto community,<br><br></div>i hav=
e been testing the poky-tiny with meta-raspberry pi, i successfully compile=
d the kernel and all the underlying components, but the output is a cpio ar=
chive.<br><br></div>However, the rpi-image has 2 partitions, a windows and =
linux partition. I am now stopping at this point, where i need to generate =
the rpi-image instead of the cpio.<br><br></div>any help is apprecitated, t=
hanks in advance<br><br></div><div>regards,<br></div><div>Sherif<br></div><=
/div>

--089e0828fda42685c3055fb07eae--
