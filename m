Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C8C47E014C1
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 04:12:59 -0800 (PST)
Received: by mail-qa0-f50.google.com with SMTP id dx4so249389qab.9
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 04:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=Wln+sp1Y0xleV3FVGH/HjYWaRN4aE0z9I+vESXWkDAI=;
	b=ptLZZZP0G9pi3tUGY0botiFHOyoQgQmGuQrMp+JiVMWIu3e3CgwbKIgOJZucR8CW/y
	+AnfjAHkddQxap1LQU3cOCEoHbaQYaagcvpnWc8o627FcFv2LdD2adz7XqpZrDC719aa
	GLAA7jBtylvS8lMY6h8EKan205kPIVp1AoywR5mKm5Nn1rWFMegT+QfBa52NFRBZXnAM
	jPz/2L264dyoDvDmnAVVDvWxk+e01nvkWcMfjYNd7g0Ufq6LXhlMXNvXszJv+U15HlG/
	6baR5ltMIcm+pcIilVutJ1bOAnh9c+8eYV0sJUEVK8KfGRrJUJm1lLqKPPgJkV6imPvL
	q67g==
MIME-Version: 1.0
X-Received: by 10.224.184.6 with SMTP id ci6mr28285937qab.16.1362658377607;
	Thu, 07 Mar 2013 04:12:57 -0800 (PST)
Received: by 10.49.67.98 with HTTP; Thu, 7 Mar 2013 04:12:57 -0800 (PST)
Date: Thu, 7 Mar 2013 13:12:57 +0100
Message-ID: <CAFyqS9q2BimC1TeDGj5r5WZQCcG1z+MA1tdbrB5X8yLqxCheTA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: Problem with applying a patch using default -pnum
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
X-List-Received-Date: Thu, 07 Mar 2013 12:13:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi. More problems ;)
I have a patch file that needs to be applied to a source tree and the
patch file is copied properly to the ${WORKDIR} directory.
So far so good. But, the problem with this source tree is that it is
not built from the traditional root folder of the repo.
This means I need to change ${S} to point somewhere else. This also
causes the patch system to fail!
I did an override of do_patch() in my .bb and that seems to work, but
I do not like to use overrides unless I really have to.
So basically, is there some way to tell the built-in patch system to
use a different -pnum value?
If there is, I could stick with the do_patch() as provided by default.

Hans

