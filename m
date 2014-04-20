Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35AA3E00B5C
	for <yocto@yoctoproject.org>; Sun, 20 Apr 2014 05:16:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id A940427E00C
	for <yocto@yoctoproject.org>; Sun, 20 Apr 2014 12:16:23 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id gvxYVuKZHtj3 for <yocto@yoctoproject.org>;
	Sun, 20 Apr 2014 12:15:57 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 2653527E006
	for <yocto@yoctoproject.org>; Sun, 20 Apr 2014 12:15:57 +0000 (UTC)
Message-ID: <5353BA79.3060206@dynamicdevices.co.uk>
Date: Sun, 20 Apr 2014 13:15:53 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: Question about rebuilding RPM package index for updated RPMs when bitbake completes
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
X-List-Received-Date: Sun, 20 Apr 2014 12:16:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to put in place a development workflow using the PR server,
RPM package feeds and smart update/install on a target.

I see that when I modify and rebuild my recipe, foo, the PR server
increments its count within the RPM filename, but the RPM feed data
doesn't seem to update.

e.g. in my deploy/rpm/cortexa9_vfp_neon folder I see a change (say) from

foo-1.7.11-r0.1.cortexa9_vfp_neon.rpm

to

foo-1.7.11-r0.2.cortexa9_vfp_neon.rpm

However if I then run smart on the target (configured to use that rpm
package feed) I don't see new packages

smart update

Similarly if I remove the package and reinstall it I get an error

smart remove foo
smart install foo

Fetching packages...
-> http://pkgrepo.my.local/.../foo-1.7.11-r0.1.cortexa9_vfp_neon.rpm
foo-1.7.11-r0.1...                                          [  0%]

error: Failed to download packages:
error:    
http://pkgrepo.my.local/cortexa9_vfp_neon/foo-1.7.11-r0.1.cortexa9_vfp_neon.rpm:
File not found

I believe this is because the old package has been removed, and the new
package added to the folder,
but the repodata has not been rebuilt, leaving the packages out of sync
with the feed representation.

If then try running

bitbake package-index

When I now run an update on the target it picks up the new package and I
can fetch and install this

smart update

Updating cache...               ########################################
[100%]

Channels have 3 new packages:
    foo-1.7.11-r0.3@cortexa9_vfp_neon
...


So if I am understanding the above correctly, when I make a change to a
recipe and build it, PR automatically
updates, the old RPM is removed and the new RPM added to the feed
directory. However the package index
for the feed is not updated.

So if at that point I try to make use of the feed on a target I am
likely to find something is broken.

If that is true would it make sense to leave the old RPM in the feed
directory until package-index
is re-ran, or to run package-index automatically at the end of a build
when RPMs have changed?

Thanks,

Alex




