Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7486BE00A28; Thu,  3 May 2018 03:43:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52344E007C2
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 03:43:01 -0700 (PDT)
Received: by mail-wr0-f180.google.com with SMTP id o4-v6so17060609wrm.0
	for <yocto@yoctoproject.org>; Thu, 03 May 2018 03:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Qp8w3T/EFbgP+HM/xQzvf9ITFZxFLs/wTIj/5BxO1nY=;
	b=oUG7P7c7noJkuPG+rmeSkFMXa4gMyoz3qHXU6pliYrmri3dUEIlORZdILErFVg2CKN
	rwAihRUMrWHhMZGNTZrw9o5aiMeWAqIvIQprbKvIpQ5jTsNRv1lPc4rMP70YGYAjI4zP
	xRm2pXMILMqAEZVNAdDOK2S7qQZqenJphIqU4Wi4cVDQ7wZ/60xdCFWvUUx5I8vi7SlW
	qWXdjKFM8VZNpv7ktjIMGhzLTW5h37gobRioExDsWjAiry5W61Ccf5FxU8uQ/02R5T/A
	W0VdvH13O5hoCUl3GgynqYlalVeob704VAjU9v9jUyy7RrkMKY5g1CEJuH6ovLY6RyHD
	uXgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Qp8w3T/EFbgP+HM/xQzvf9ITFZxFLs/wTIj/5BxO1nY=;
	b=M2P7tyH+I1xYtS4izV4K7SzpdRzYyIDzYUPqIIEZDuB7OjrJpQIfCYf/QFgGa6qcAp
	r1Eee6JyIL4QCDjvqznuY2Q9VaNFHYSjV0lVRvMbVjln1Tcvx5bFzbhA84bxgyoZ1+NE
	0BYdGn+2px6ZRVt51Hw5WG9YwNADRjk3OMVrgCNWW/OonW5RJmx7w7njN/vhoKsZyPfO
	UhVgsABLjrdBf7ujixQRLXAU7p2GTClHyqv/YiaEDYOQlifozTRIJ/3OG5OaU63ePJ59
	wmppjTtEkLiHkj4xmjWqSBJNDsk09qvh0gyD/XMlnbtbu6iqeevNIHh+wW6sTSoR4O/s
	YsGA==
X-Gm-Message-State: ALQs6tBcZAhVVj5QMhtyOQGV8sE94UwYFel7c5CzhvqIFlluHdn63949
	kXvabsQesu5udU5bvn//w5GGWm2cf4YsxrY+5wRCtrw=
X-Google-Smtp-Source: AB8JxZok0YUFVJaKZNNTQ9C9+gP00CjsSYEm2tirxHvcVua510N3qyCXlRQfjuFxE2rDpxuKziDo3dNHOMqaatGxAi0=
X-Received: by 2002:adf:9003:: with SMTP id
	h3-v6mr13800216wrh.188.1525344179543; 
	Thu, 03 May 2018 03:42:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.39.68 with HTTP; Thu, 3 May 2018 03:42:59 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
Date: Thu, 3 May 2018 12:42:59 +0200
Message-ID: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: ROOTFS_RPM_DEBUG undocumented
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
X-List-Received-Date: Thu, 03 May 2018 10:43:03 -0000
Content-Type: text/plain; charset="UTF-8"

Hello all,

I recently had the problem where the do_rootfs task seemed to hang.
The output where it hang looked like [1] and stayed that way for the
better part of an hour.

When I ran bitbake with -vD arguments not more relevant output was
given [2], also hanging for a lot of time.

As noted in another mailing list post about rootfs hanging[3], the
culprit was the enormous amount of kernel modules which were being
built. I only discovered this because I was able to strace and see
that actually bitbake was not hanging but actually running dnf
install.

When I searched for the code responsible for the invocation of dnf I
notice there is an undocumented variable called ROOTFS_RPM_DEBUG that
enables verbosity of the dnf and prints it out. This would have been
very helpful output for my 'bitbake -vD' invocation, and truly
debugging information would have helped.

What I ask is a decision on which option would better suite this issue:

# Add ROOTFS_RPM_DEBUG to the documentation;
# Detect if we are running with debug output and enable the debugging
output. This is the most elegant solution but I do not know how to
detect if debug log level is turned on;
# Have dnf always print in verbose mode and print the output to
bb.debug instead of bb.note.

I am happy to provide a patch upon decision or suggestions.

Paulo Neves

[1] NOTE: recipe drotag-cloud-image-debug-1.0-r0: task do_rootfs: Started

[2] DEBUG: drotag-cloud-image-debug-1.0-r0 do_rootfs: Executing python
function do_rootfs

[3] https://lists.yoctoproject.org/pipermail/yocto/2017-May/036293.html

