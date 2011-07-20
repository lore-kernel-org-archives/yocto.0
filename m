Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67BAC4C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 21:21:02 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Wed, 20 Jul 2011 10:20:44 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Wed, 20 Jul 2011
	10:20:42 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: Joshua Lock <josh@linux.intel.com>
Date: Wed, 20 Jul 2011 10:31:42 +0800
In-Reply-To: <1311124438.2115.33.camel@scimitar>
References: <1310496703.2162.17.camel@scimitar>
	<4E1C9A00.5060005@linux.intel.com> <1310504880.20015.1080.camel@rex>
	<1310519752.2527.20.camel@localhost.localdomain>
	<1310522900.2162.26.camel@scimitar>
	<1310523594.2527.35.camel@localhost.localdomain>
	<1310524300.2162.28.camel@scimitar>
	<1310544262.15433.3.camel@localhost.localdomain>
	<4E1DCF73.3030101@linux.intel.com>
	<1310607271.946.1.camel@localhost.localdomain>
	<1311124438.2115.33.camel@scimitar>
X-Mailer: Evolution 3.0.2 
Message-ID: <1311129102.4280.13.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Wed, 20 Jul 2011 02:21:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

update accroding your suggestion.
This patch is for bitbake indeed, but bitbake is not part of
openembedded. Is it RIGHT?


diff --git a/oe-init-build-env b/oe-init-build-env
index 77332a7..acf4e96 100755
--- a/oe-init-build-env
+++ b/oe-init-build-env
@@ -39,6 +39,34 @@ else
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
+         echo "NOTE: poky will use '$PY_BIN' to execute python code."
+      else
+         echo "ERROR: unable to find Python 2.x, BitBake requires
Python 2.6 or
+      fi
+      unset PYTHON2_BIN
+   fi
+
    [ -n "$BUILDDIR" ] && cd $BUILDDIR
 fi


On Wed, 2011-07-20 at 09:13 +0800, Joshua Lock wrote:
> On Thu, 2011-07-14 at 09:34 +0800, NiQingliang wrote:
> > new version
> >
> > diff --git a/oe-init-build-env b/oe-init-build-env
> > index 77332a7..0fe1b5e 100755
> > --- a/oe-init-build-env
> > +++ b/oe-init-build-env
> > @@ -39,6 +39,35 @@ else
> >     $OEROOT/scripts/oe-setup-builddir
> >     unset OEROOT
> >     unset BBPATH
> > +
> > +   # find the python 2.x, if the default python is not.
> > +   # NOTE:
> > +   #    the 'python -V' need redirect to stdout
> > +   #    once we can ensure every distribution has 'python2' (currently,
> > except
> > +   #    ubuntu), we should change bitbake's shebang to '/usr/bin/env
> > python2',
> > +   #    and remove this patch.
> > +   # precondition:
> > +   #    $BUILDDIR is not NULL, but I doubt when it will be NULL.
> > +   #    user have not made the file $BUILDDIR/python by himself.
> > +   if [ -z "`/usr/bin/env python -V 2>&1|grep '^Python 2\.'`" ]; then
> > +      echo "WARNING: your default python is not 2.x, so autodetect..."
> 
> I'm not sure we need to print this.
> 
> > +      PYTHON2_BIN=""
> > +      for PY_BIN in `find /{usr/,}bin -regex '.*/python\(\|2\|2\.[0-9]*
> > \)'`; do
> > +         if [ -n "`$PY_BIN -V 2>&1|grep '^Python 2\.'`" ]; then
> > +            PYTHON2_BIN=$PY_BIN
> > +            break
> > +         fi
> > +      done
> > +      if [ -n "$PYTHON2_BIN" ]; then
> > +         ln -sf $PY_BIN $BUILDDIR/python
> > +         export PATH="$BUILDDIR:$PATH"
> > +         echo "WARNING: poky will use '$PY_BIN' to execute python
> > code."
> 
> I can live without this message but if we do leave it in we should
> probably call it a NOTE rather than WARNING.
> 
> > +      else
> > +         echo "ERROR: poky can't find python 2.x."
> 
> Perhaps make this a little more informative?
> 
> ERROR: unable to find Python 2.x, BitBake requires Python 2.6 or 2.7.
> 
> > +      fi
> > +      unset PYTHON2_BIN
> > +   fi
> > +
> >     [ -n "$BUILDDIR" ] && cd $BUILDDIR
> >  fi
> 
> I can verify that this works as expected (i.e. does nothing) on my
> Fedora 15 machine with Python 2.7.1.
> 
> Could you submit the patch to the openembedded-core mailing list so that
> it can be considered for inclusion in the Yocto project's shared
> upstream?
> 
> Thanks,
> Joshua
> --
> Joshua Lock
>         Yocto Project "Johannes factotum"
>         Intel Open Source Technology Centre
> 

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



