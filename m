Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71A5F4C810C1
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 20:32:06 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Oct 2010 18:32:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,220,1286175600"; d="scan'208";a="339061355"
Received: from unknown (HELO [10.255.12.149]) ([10.255.12.149])
	by azsmga001.ch.intel.com with ESMTP; 21 Oct 2010 18:32:04 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4CC0C619.7070201@linux.intel.com>
References: <4CC0C619.7070201@linux.intel.com>
Date: Thu, 21 Oct 2010 20:32:14 -0500
Message-ID: <1287711134.10206.62.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>, "Rifenbark,
	Scott M" <scott.m.rifenbark@intel.com>, "Lock,
	Joshua" <joshua.lock@intel.com>
Subject: Re: RFC: "Demo Use Cases" documentation for the web page
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 01:32:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-10-21 at 16:00 -0700, Darren Hart wrote:
> Media Network Demo
> ==================
> We're looking to have a section on the web site for the demo that
> explains what each use-case is and possibly how it can be replicated.
> I'm taking the approach of describing each image. Consider the
> following:
> 

This is a good start.  I don't know if this is the place to add it, but
I just wanted to capture the details of what I've done so far to get my
setup working.  For now mainly in case anyone else could use some hints
on how to get everything going...

Basically this is just what I did, and it may be completely wrong -
please do correct anything stupid and suggest improvements if you see
any - at this point I just want to get the basic stuff up and running so
I can pack it all up tomorrow night and not be too worried about not
having anything.

> The Yocto Project launch event at ECLF 2010 featured a
> multi-architecture Media Network Demo. All the source for this demo is
> available in the meta-demo git repository as a layer for the poky build
> system.
> 
> The following images made up the demo:
> o poky-image-nas
> o poky-image-mediatomb
> o poky-image-rygel
> 
> poky-image-nas
> --------------
> The poky-image-nas image boots your device as a network attached storage
> device. It provides a DHCP service and an NFS server. We used this image
> to store all our media.
> 

Rather than using the nas image, since all I have is a laptop and the
two atom boards, I decided to just do the simplest thing for now and
have my laptop host and serve up the images over nfs (I was thinking of
doing the nas image inside of say an arm qemu instance running on the
laptop, and may still if I get time, but as a simple approximation, this
will work.  All this is also just a fallback in case the real demo
system breaks down, so I'm not being too particular).

So on the laptop, install the nfs server and export the media files:

# apt-get install nfs-kernel-server

Put a bunch of music files somewhere - in my case I put some files in:

/home/trz/Music

Add a line to /etc/exports to export that directory:

/home/trz/Music	*(ro,sync,no_root_squash)

restart the nfs server:

/etc/init.d/nfs-kernel-server restart

Let's say the IP address the laptip got was 192.168.1.3.

> poky-image-mediatomb
> --------------------
> The poky-image-mediatomb image adds a UPnP content provider via the
> mediatomb package. This image mounts the media share from the NAS and
> makes it available to UPnP renderers.

ssh into the mediatomb board, in my case, this is a Black Sand, and
mount the exported media share:

# mount 192.168.1.3:/home/trz/Music /media/music

So now the mediatomb box has access to the files it's going to
advertise.  Let's tell mediatomb to do that.

Look in /var/log/mediatomb.log

You should see a line like this:

2010-09-08 10:50:03    INFO: MediaTomb Web UI can be reached by
following this link:
2010-09-08 10:50:03    INFO: http://192.168.1.3:49152/

Point a web browser at that URL and you should see the minimalistic
Mediatomb web interface.  Click on the 'Filesystem link' and you should
see somewhere in there your /media/music mount.  Click on that and you
should see all your music on the right-hand-side.  Click on the '+' and
that should add all your songs to mediatomb (watch out, there doesn't
seem to be any indication as to whether it succeeded or not - I had
duplicates show up in Mediatomb if I did that more than once - just like
iTunes, yeah!).

If you go the 'Database link', you should see a treeview with your songs
somewhere in there.  This is the same hierarchy you'll see and navigate
to play your songs in the rygel image 'AV control point'.

*Note, if mediatomb.log showed errors instead of the URL you need, it's
probably because eth0 didn't come up (working on a fix).  An ifup
eth0; /etc/init.d/mediatomb restart should fix that.

If that step was successful, you should now be able to see and play your
songs from another box...

> 
> poky-image-rygel
> ----------------
> The poky-image-rygel image provides gupnp tools and the rygel media
> renderer along with the sato desktop. The renderer can be controlled 
> locally or via any control point on the network. Several devices can run 
> this image and stream media from the mediatomb device.
> 

On the rygel image, open up a terminal and type:

# rygel

(the latest image takes awhile to display anything - it's not graphical,
will display a couple lines of text - one of which is an error message,
but the 'playbin' plugin should say it's available, and things should
still work.)

Navigate back to the Desktop and find the 'UpnP Universal Control Point'
and click on it.  That should open up a graphical UI showing available
data sources (but is not where you play media from)...

Navigate back to the Desktop and find the 'UPnP AV Control Point'.
Click on that, and you should see something more familiar, something
that looks like it can actually do something useful, which is play a
song.  Click on treeview in the app, and eventually you should see some
songs.  Click on a song, and hit the 'Play' button, and it should play
the song - it couldn't be easier!

NOTE: make sure you have speaker connected to the board you're rendering
the music on.  If that doesn't work, try opening a terminal window and
using amixer to play around with the volume e.g.:

amixer set Master on
amixer set Master 75

For extra credit, install gupnp-tools and try the AV Control Point from
your laptop, or any system - you should see the same media and should be
able to control it from anywhere.  Choose a different song and send it
to any other renderer running on any other box, etc.  The possibilities
are endless!

> 
> Open Questions
> --------------
> o Is this more or less what we are looking for?
> o Should we modify the mediatomb image to:
>    o automatically mount a specific share from the NAS?
>    o add something to the config to automatically scan the
>      media share?
> o The poky-image-rygel description needs to be updated as we finalize
>    the package.
> 
> 
> 



