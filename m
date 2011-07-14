Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC0AA4C800B9
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2011 20:31:15 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Thu, 14 Jul 2011 09:31:03 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Thu, 14 Jul 2011
	09:31:03 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 14 Jul 2011 09:34:31 +0800
In-Reply-To: <4E1DCF73.3030101@linux.intel.com>
References: <1310496703.2162.17.camel@scimitar>
	<4E1C9A00.5060005@linux.intel.com> <1310504880.20015.1080.camel@rex>
	<1310519752.2527.20.camel@localhost.localdomain>
	<1310522900.2162.26.camel@scimitar>
	<1310523594.2527.35.camel@localhost.localdomain>
	<1310524300.2162.28.camel@scimitar>
	<1310544262.15433.3.camel@localhost.localdomain>
	<4E1DCF73.3030101@linux.intel.com>
X-Mailer: Evolution 3.0.2 
Message-ID: <1310607271.946.1.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Supporting upcoming distribution releases
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
X-List-Received-Date: Thu, 14 Jul 2011 01:31:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

new version

diff --git a/oe-init-build-env b/oe-init-build-env
index 77332a7..0fe1b5e 100755
--- a/oe-init-build-env
+++ b/oe-init-build-env
@@ -39,6 +39,35 @@ else
    $OEROOT/scripts/oe-setup-builddir
    unset OEROOT
    unset BBPATH
+
+   # find the python 2.x, if the default python is not.
+   # NOTE:
+   #    the 'python -V' need redirect to stdout
+   #    once we can ensure every distribution has 'python2' (currently,
except
+   #    ubuntu), we should change bitbake's shebang to '/usr/bin/env
python2',
+   #    and remove this patch.
+   # precondition:
+   #    $BUILDDIR is not NULL, but I doubt when it will be NULL.
+   #    user have not made the file $BUILDDIR/python by himself.
+   if [ -z "`/usr/bin/env python -V 2>&1|grep '^Python 2\.'`" ]; then
+      echo "WARNING: your default python is not 2.x, so autodetect..."
+      PYTHON2_BIN=""
+      for PY_BIN in `find /{usr/,}bin -regex '.*/python\(\|2\|2\.[0-9]*
\)'`; do
+         if [ -n "`$PY_BIN -V 2>&1|grep '^Python 2\.'`" ]; then
+            PYTHON2_BIN=$PY_BIN
+            break
+         fi
+      done
+      if [ -n "$PYTHON2_BIN" ]; then
+         ln -sf $PY_BIN $BUILDDIR/python
+         export PATH="$BUILDDIR:$PATH"
+         echo "WARNING: poky will use '$PY_BIN' to execute python
code."
+      else
+         echo "ERROR: poky can't find python 2.x."
+      fi
+      unset PYTHON2_BIN
+   fi
+
    [ -n "$BUILDDIR" ] && cd $BUILDDIR
 fi



On Thu, 2011-07-14 at 01:01 +0800, Darren Hart wrote:
> 
> On 07/13/2011 01:04 AM, NiQingliang wrote:
> > first sorry about that, indeed I don't know how to commit a patch, so
> > just paste the diff result here.
> >
> > diff --git a/oe-init-build-env b/oe-init-build-env
> > index 77332a7..0da8bc0 100755
> > --- a/oe-init-build-env
> > +++ b/oe-init-build-env
> > @@ -39,6 +39,20 @@ else
> >     $OEROOT/scripts/oe-setup-builddir
> >     unset OEROOT
> >     unset BBPATH
> > +
> 
> Before searching manually, we should attempt to use whatever is set in
> the environment.
> 
> --
> Darren
> 
> > +   # find the python version 2.x
> > +   # the 'python -V' need redirect to stdout
> > +   # precondition:
> > +   #    $BUILDDIR is not NULL, but I doubt when it will be NULL.
> > +   #    user have not made the file $BUILDDIR/python by himself.
> > +   for PY_BIN in `find /{usr/,}bin -regex '.*/python\(\|2\|2\.[0-9]*
> > \)'`; do
> > +      if [ -n "`$PY_BIN -V 2>&1|grep '^Python 2\.'`" ]; then
> > +         ln -sf $PY_BIN $BUILDDIR/python
> > +         export PATH="$BUILDDIR:$PATH"
> > +         break
> > +      fi
> > +   done
> > +
> >     [ -n "$BUILDDIR" ] && cd $BUILDDIR
> >  fi
> >
> >
> > On Wed, 2011-07-13 at 10:31 +0800, Joshua Lock wrote:
> >> On Wed, 2011-07-13 at 10:19 +0800, NiQingliang wrote:
> >>> /usr/bin/env python2
> >>> /usr/bin/env python2.7
> >>
> >> These are both valid on Fedora 15, iirc before distributions started
> >> shipping Python 3 they were less common though...
> >>
> >>> both of them are ok for archlinux, but I don't know which is ok for
> >>> other distributions, maybe both are not.
> >>>
> >>> maybe we can make a shell script to detect the python version, and make
> >>> a symbollink to the right one in some directory, and add the directory
> >>> into env var "PATH".
> >>
> >> Patches welcome :-)
> >>
> >> I looked at it briefly and the work would require more time than I have
> >> spare right now just to ensure it worked on all required distributions.
> >>
> >> If you'd like to work on a patch I'd be happy to help test and review.
> >>
> >> Cheers,
> >> Joshua
> >> --
> >> Joshua Lock
> >>         Yocto Project "Johannes factotum"
> >>         Intel Open Source Technology Centre
> >>
> >
> 
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



