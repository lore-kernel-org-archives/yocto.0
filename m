Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0780EE004D2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 10:34:13 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 30 Jan 2012 10:34:12 -0800
Received: by iabz7 with SMTP id z7so5548685iab.25
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 10:34:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.178.70 with SMTP id cw6mr23562114igc.4.1327948451220; Mon,
	30 Jan 2012 10:34:11 -0800 (PST)
Received: by 10.50.190.161 with HTTP; Mon, 30 Jan 2012 10:34:11 -0800 (PST)
In-Reply-To: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
References: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
Date: Mon, 30 Jan 2012 10:34:11 -0800
Message-ID: <CAPhnLPD+gYgUzsYaFvqjKWK2Sq=iXeKr6a5+HSakoPVHS1FCHw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: paul_nathan@selinc.com
Cc: yocto@yoctoproject.org
Subject: Re: Yocto & long-term reproducibility of rebuilds
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
X-List-Received-Date: Mon, 30 Jan 2012 18:34:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 30, 2012 at 8:34 AM,  <paul_nathan@selinc.com> wrote:
> Hi,
>
> I am investigating Yocto for a build system here. Part of my requirements
> for a build system is auditable/traceable builds that can be replicated l=
ong
> into the future (our company has a 10 year warranty on our products, and =
we
> build products for the multidecade term). Initial examination of Yocto sh=
ows
> that it builds packages from a number of different domains online, which
> will not meet our requirements - we'll have to store these packages to
> ensure these packages exist in the correct version long into the future. =
=A0I
> know we can manually edit the SRC_URI setting in .bb files, but the more
> general problem of package archiving exists.
>

I would avoid manually editing SRC_URI.

Set up PREMIRRORS and BB_FETCH_PREMIRRORONLY. That would ensure that
you avoided any upstream contamination.

-b

> I am interested in any information or recommendations other users of the
> Yocto system have on how they have solved this sort of design constraint.
>
> - - -
> Regards,
> Paul Nathan
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

