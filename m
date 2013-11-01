Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11264E017DC
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 03:03:47 -0700 (PDT)
Received: from [127.0.0.1] (cpc16-live22-2-0-cust180.know.cable.virginm.net
	[82.42.220.181])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 73FF8861B2
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 10:03:46 +0000 (UTC)
Message-ID: <52737C80.2020702@dynamicdevices.co.uk>
Date: Fri, 01 Nov 2013 10:03:44 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: [meta-mono] Question about Q/A installed vs shipped failure
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
X-List-Received-Date: Fri, 01 Nov 2013 10:03:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm looking at at the gtk-sharp recipe in meta-mono: 
http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/tree/recipes-mono/gtk-sharp/gtk-sharp_2.10.2.bb

This defines the contents of various gtk-sharp related packages making 
use of FILES_foo = and PACKAGES =

When I try to build against the Yocto head it fails a Q/A check with 
"ERROR: QA Issue: gtk-sharp: Files/directories were installed but not 
shipped"

Normally I would expect the extraneous files to be found in the image 
tree and add do_install_append() to rm the unneeded files from {$}D/foo/bar

However the behaviour of this recipe seems different.

For some reason the extraneous files are being found in the ../package 
tree. They are put there by the do_package() step, which is executed 
after my do_install_append().

I have tried adding a do_package_append() which I thought might help but 
bitbake won't accept this.

Can anybody advise:

(a) if files being in ./package indicates a problem with the recipe or 
if this is correct behaviour, and
(b) what is recommended practice to deal with this?

For now I am adding INSANE_SKIP_${PN} = "installed-vs-shipped" to the 
recipe but I'd rather not disable Q/A in this manner.

Thanks,

Alex


-- 
Dynamic Devices Ltd <http://www.dynamicdevices.co.uk/>

Alex J Lennon / Director
1 Queensway, Liverpool L22 4RA

mobile: +44 (0)7956 668178

Linkedin <http://www.linkedin.com/in/alexjlennon> Skype
<skype:alexjlennon?add>

This e-mail message may contain confidential or legally privileged
information and is intended only for the use of the intended
recipient(s). Any unauthorized disclosure, dissemination, distribution,
copying or the taking of any action in reliance on the information
herein is prohibited. E-mails are not secure and cannot be guaranteed to
be error free as they can be intercepted, amended, or contain viruses.
Anyone who communicates with us by e-mail is deemed to have accepted
these risks. Company Name is not responsible for errors or omissions in
this message and denies any responsibility for any damage arising from
the use of e-mail. Any opinion and other statement contained in this
message and any attachment are solely those of the author and do not
necessarily represent those of the company.


