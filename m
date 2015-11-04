Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9329E00A73; Wed,  4 Nov 2015 11:57:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (challinan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89B3AE00A28
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 11:57:04 -0800 (PST)
Received: by oiad129 with SMTP id d129so34495090oia.0
	for <yocto@yoctoproject.org>; Wed, 04 Nov 2015 11:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=XHoo38IBA37jk8iJTbl2JngjE9MSZXb/tb8P3/I3xHQ=;
	b=sk1HsXFvnxozN8En+yv3sWiIQhdN5zSr0jUY8A7qELJgQCBJBIT2AQBpxdWau6dE7c
	cf+jqORvZnUepWySq4vSkBBgC2y0D5euuzxNByccMuOrFCdY6bu7lOz8bFTTEIw5MO7/
	rQ23DPAs/HHV6GCTZzsqAyYoP4GBtysWn/C/Q+Fvb49t535A4fNLhcVK3uJlp1zDa0Dr
	VJxUQQmmwtzjeS+9c8+7HCPzmZTBpFK55zJab9wvGVRs4lW9jZsBtGSQIbDvg3jC17sv
	+4vi5wYTj+m/qD5itOZADPP+g8A2wmzwIm54c6TUnW9GQP4MEPRJz+TUlIB/T1i9iguK
	9GcA==
MIME-Version: 1.0
X-Received: by 10.202.226.136 with SMTP id z130mr2016363oig.19.1446667023628; 
	Wed, 04 Nov 2015 11:57:03 -0800 (PST)
Received: by 10.202.171.6 with HTTP; Wed, 4 Nov 2015 11:57:03 -0800 (PST)
Date: Wed, 4 Nov 2015 14:57:03 -0500
Message-ID: <CAME0jBSQ2VSnA1RSNTQne2ZGRm+8AbihXiWCq4VR7+pYFsgUKw@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Unable to modify patch files in u-boot recipe - quilt applies direct from layer files
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
X-List-Received-Date: Wed, 04 Nov 2015 19:57:05 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I was trying to "patch a patch" in a u-boot recipe using standard
bbappends technique.  I added a task before do_patch after do_unpack
to munge the patch that was broken.  Here is what seems to happen:

do_unpack:
    copies all the patch files from the metadata layer into ${WORKDIR}

do_fix_patch (my additional task)
    uses sed or patch to apply a local fix to a broken patch in ${WORKDIR}

do_patch
    creates a subdirectory in ${S} called "patches", and puts links to
the actual files in the layer and uses those links back to the layer
files to apply the patches.

It seems quilt is using the actual layer files instead of the ones in
${WORKDIR}??

This seems odd and somehow wrong.  We copy the layer files into
WORKDIR, and the unsuspecting user (me) thinks those are the files
that do_patch will use.

This one took me some time (and help) to figure out!

Comments?  Is this a bug?  halfway in the middle of some architectural
changes?  Expected behavior?

My workaround was to simply replace the entire patch.

-Chris

-- 
Life is like Linux - it never stands still.

