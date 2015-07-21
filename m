Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4789AE0097F; Tue, 21 Jul 2015 07:57:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0991BE00837
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 07:57:45 -0700 (PDT)
Received: by igr7 with SMTP id 7so42862351igr.0
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 07:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=eeF1xM8V99dwKN0LQOLEUsVt0lPLV4wWnHt5iZFzIh4=;
	b=o1JiyFxswrFbRu1TfBwH0vh3IiFrnUmlSmnNzixB3GP4qX38fEEt6p2dhoj8SofEZi
	SV25Z/5gGPPJ99bTp4pmbDm4zVQHvCVW2SAdvL1bNLvbRtGw/4pJqiFap7OPOF+pTLM6
	NHnHslpqqC/m7T2j0tlGPvW2YOJy6+mTKqUiuI1E1lstul8MY2eRxtrIjI5etQ3eSXo4
	529KNY9Z+HrVCcEWE8DRhZc1d6ik2SiGnh5v6Q/Ce7FwvDL4gexgGiOuH0rP8kjTpnVq
	uDwJtuaqkGbseDyjPUJPtBdtXAaq37YAjLBlIUllqc4JowhjNmzFsOco563DYOI2cu0t
	MuHA==
MIME-Version: 1.0
X-Received: by 10.50.30.105 with SMTP id r9mr24734072igh.11.1437490665471;
	Tue, 21 Jul 2015 07:57:45 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Tue, 21 Jul 2015 07:57:45 -0700 (PDT)
Date: Tue, 21 Jul 2015 09:57:45 -0500
Message-ID: <CAK5mtexxdYxhwvv-MB27Ur56iwAV8O3Y6ah_BPAo+R58NmNouQ@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-devel@lists.openembedded.org
Subject: Bug in Open CV receipt
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
X-List-Received-Date: Tue, 21 Jul 2015 14:57:47 -0000
Content-Type: text/plain; charset=UTF-8

Hi team

Few weeks ago I was having some problems with open CV receipt. In the
begining I toght I was adding opencv tro my core-image-minimal-xfce
just with this:

IMAGE_INSTALL_append = " gcc gcc-dev openssh php mariadb opencv"

Now after booting the image I realize that none of the libraries for
open stack were added to my image

What I had to do was the following:


IMAGE_INSTALL_append = " libopencv-core-dev libopencv-highgui-dev
libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev
opencv-staticdev python-opencv"

Even last night when one of the opencv developers ask me for python
opencv I had to add the last part python-opencv. That is not cool at
all . If I add opencv in the beginning I assume we are more than cool
with that and yocto will add all the packages . Unless I am doing
something wrong, in taht case I am more than happy to get the
feedback.

Thanks a lot for all the help . If someone else can reproduce this bug
I am more than happy to report it in bugzila (not sure the URL)

Hope it helps to cut the time of some others

Best regards

Victor Rodriguez

