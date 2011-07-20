Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5AD84C800A3
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 20:13:59 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Jul 2011 18:13:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,231,1309762800"; d="scan'208";a="29210101"
Received: from unknown (HELO [10.255.14.85]) ([10.255.14.85])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2011 18:13:58 -0700
From: Joshua Lock <josh@linux.intel.com>
To: NiQingliang <niqingliang@insigma.com.cn>
Date: Tue, 19 Jul 2011 18:13:53 -0700
In-Reply-To: <1310607271.946.1.camel@localhost.localdomain>
References: <1310496703.2162.17.camel@scimitar>
	<4E1C9A00.5060005@linux.intel.com> <1310504880.20015.1080.camel@rex>
	<1310519752.2527.20.camel@localhost.localdomain>
	<1310522900.2162.26.camel@scimitar>
	<1310523594.2527.35.camel@localhost.localdomain>
	<1310524300.2162.28.camel@scimitar>
	<1310544262.15433.3.camel@localhost.localdomain>
	<4E1DCF73.3030101@linux.intel.com>
	<1310607271.946.1.camel@localhost.localdomain>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1311124438.2115.33.camel@scimitar>
Mime-Version: 1.0
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
X-List-Received-Date: Wed, 20 Jul 2011 01:13:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-14 at 09:34 +0800, NiQingliang wrote:
> new version
> 
> diff --git a/oe-init-build-env b/oe-init-build-env
> index 77332a7..0fe1b5e 100755
> --- a/oe-init-build-env
> +++ b/oe-init-build-env
> @@ -39,6 +39,35 @@ else
>     $OEROOT/scripts/oe-setup-builddir
>     unset OEROOT
>     unset BBPATH
> +
> +   # find the python 2.x, if the default python is not.
> +   # NOTE:
> +   #    the 'python -V' need redirect to stdout
> +   #    once we can ensure every distribution has 'python2' (currently,
> except
> +   #    ubuntu), we should change bitbake's shebang to '/usr/bin/env
> python2',
> +   #    and remove this patch.
> +   # precondition:
> +   #    $BUILDDIR is not NULL, but I doubt when it will be NULL.
> +   #    user have not made the file $BUILDDIR/python by himself.
> +   if [ -z "`/usr/bin/env python -V 2>&1|grep '^Python 2\.'`" ]; then
> +      echo "WARNING: your default python is not 2.x, so autodetect..."

I'm not sure we need to print this.

> +      PYTHON2_BIN=""
> +      for PY_BIN in `find /{usr/,}bin -regex '.*/python\(\|2\|2\.[0-9]*
> \)'`; do
> +         if [ -n "`$PY_BIN -V 2>&1|grep '^Python 2\.'`" ]; then
> +            PYTHON2_BIN=$PY_BIN
> +            break
> +         fi
> +      done
> +      if [ -n "$PYTHON2_BIN" ]; then
> +         ln -sf $PY_BIN $BUILDDIR/python
> +         export PATH="$BUILDDIR:$PATH"
> +         echo "WARNING: poky will use '$PY_BIN' to execute python
> code."

I can live without this message but if we do leave it in we should
probably call it a NOTE rather than WARNING.

> +      else
> +         echo "ERROR: poky can't find python 2.x."

Perhaps make this a little more informative?

ERROR: unable to find Python 2.x, BitBake requires Python 2.6 or 2.7.

> +      fi
> +      unset PYTHON2_BIN
> +   fi
> +
>     [ -n "$BUILDDIR" ] && cd $BUILDDIR
>  fi

I can verify that this works as expected (i.e. does nothing) on my
Fedora 15 machine with Python 2.7.1.

Could you submit the patch to the openembedded-core mailing list so that
it can be considered for inclusion in the Yocto project's shared
upstream?

Thanks,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


