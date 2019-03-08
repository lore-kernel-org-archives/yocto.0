Return-Path: <442-103-8455@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42AE4E00D05; Thu,  7 Mar 2019 19:26:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FROM_STARTS_WITH_NUMS,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.7 FROM_STARTS_WITH_NUMS From: starts with several numbers
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [64.59.136.139 listed in list.dnswl.org]
Received: from smtp-out-so.shaw.ca (smtp-out-so.shaw.ca [64.59.136.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66703E00AD5
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 19:26:40 -0800 (PST)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id 269eha9oVPuMk269fhmf97; Thu, 07 Mar 2019 20:26:40 -0700
X-Authority-Analysis: v=2.3 cv=Mf4SRK3f c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=NTGMnVQrEZIA:10
	a=vlXZX8eO89Ih4-pJb7YA:9 a=QEXdDO2ut3YA:10 a=pHzHmUro8NiASowvMSCR:22
	a=nt3jZW36AmriUCFCBwmW:22
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <442-103-8455@kylheku.com>) id 1h269e-0004uG-NK
	for yocto@yoctoproject.org; Thu, 07 Mar 2019 19:26:38 -0800
To: yocto@yoctoproject.org
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Thu, 07 Mar 2019 19:26:38 -0800
From: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
Message-ID: <5be9f511c95ccc7037d99cf809c21894@mail.kylheku.com>
X-Sender: 442-103-8455@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfEFywuYBClymvBsSeV/VYkMdLJbHXRUiKGYIDo2O7o64IfW4QaEVQntBrGcr0pXaUULbq+Px0DCkrUIqRBSu0M0UdjvJ8/V2iD8ToAE8rABm4bjj+CQY
	Di0B2uYG6iyt2iqp4IOXLSH514ieZPxH7RzmXvsBuN8lLLcUTS4AtntXcwyRVPTjvRVbEf259kYthA==
Subject: New: "extrapatches" bbclass.
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
X-List-Received-Date: Fri, 08 Mar 2019 03:26:42 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

#
# extrapatches bbclass
#
# This bbclass allows for a recipe to apply additional patches.
#
# "Additional patches" refers to patches that are not individually
# fetched by the SRC_URI mechanism, but are already present
# inside the source trees that are fetched and unpacked.
# Referring directly to recipe-side patches
# without fetching them via SRC_URI is also possible.
#
# How to use this class:
#
#   1. Add   inherit extrapatches   to your recipe.
#   2. Optionally set the EXTRAPATCHES_WORKDIR,
#   3. List the patches in EXTRAPATCHES in order of application.
#      - Relative paths are interpreted relative to=20
EXTRAPATCHES_WORKDIR.
#      - Absolute paths are allowed
#
# Influential variables:
#
#   Name                  Default   Desc
#  =20
--------------------------------------------------------------------------
#   EXTRAPATCHES_WORKDIR  ${S}      extrapatches changes to this=20
directory.
#
#   EXTRAPATCHES          ""        list of path names of patch files
#                                   relative paths are resolved from
#                                   the EXTRAPATCHES_WORKDIR directory.
#                                   EXTRAPATCHES entries must not=20
contain
#                                   spaces or shell meta-characters.
#
# The following SRC_URI style options supported in EXTRAPATCHES=20
variable:
#
#   Name                  Default   Desc
#  =20
--------------------------------------------------------------------------
#   apply                 1         Boolean, apply the patch or not.
#
#   striplevel            1         How many leading directory=20
components
#                                   to remove, passed as the -p option
#                                   of patch.
#
# For Boolean options: yes, y, true, t, and 1 all specify "true";
# no, n, false, f and 0 specify "false".
#
# Additional usage notes:
#
# The patches you list in EXTRAPATCHES will be applied *AFTER* any
# patches that Yocto applies that are specified on the SRC_URI.
#
# If this is a problem, you can follow this method, or the alternative:
#
#   1. Add  do_patch[noexec] =3D "1"  to your recipe.
#   2. List your SRC_URI patches again in the EXTRAPATCHES variable,
#      keeping in mind they are fetched into ${WORKDIR}.
#      Absolute paths may be used like ${WORKDIR}/001-foo.patch
#
# Alternative:
#
#   1. Add  do_patch[noexec] =3D "1"  to suppress Yocto's do_patch.
#   2. Do *NOT* list any patches in SRC_URI.
#   3. Refer directly to your recipe-side patches in EXTRAPATCHES,
#      for instance EXTRAPATCHES =3D "${THISDIR}/files/my-patch.patch ..."
#

EXTRAPATCHES_WORKDIR =3D "${S}"

do_patch_extra() {
     cd ${EXTRAPATCHES_WORKDIR}
     mkdir -p patches

     if [ "$(quilt top)" =3D patches/empty-last.patch ] ; then
         # extra patches already applied: delete them, but
         # keep the empty-first.patch
         while [ "$(quilt top)" !=3D patches/empty-first.patch ] ; do
             quilt delete
         done
     elif quilt series | grep -q '^patches/empty-first[.]patch$' ; then
         # our patches are half-applied; the markers exist, but
         # the patches/empty-last.patch is not on top.
         # Let's try to recover.

         # blow off all unapplied patches
         for patch in $(quilt unapplied) ; do
             quilt delete $patch
         done

         if quilt applied empty-first.patch > /dev/null ; then
             # if the empty-first.patch marker is applied, then
             # delete everything above it
             while [ "$(quilt top)" !=3D patches/empty-first.patch ] ; do
                 quilt delete
             done
         else
             # the empty-first.patch is not applied, and no
             # unapplied patches exist. Let's assume that we
             # have a clean slate with the only patches that exist
             # being the ones from Yocto's do_patch. We begin our marker.
             # quilt ref ensures that the empty patch file is actually=20
created
             quilt new empty-first.patch ; quilt ref
         fi
     else
         # dummy marker patch indicating start of extra patches
         quilt new empty-first.patch ; quilt ref
     fi

     for patch in ${EXTRAPATCHES} ; do
         import_patch_with_options "$patch"
         quilt push
     done

     # dummy marker patch indicating that all patches are applied
     quilt new empty-last.patch ; quilt ref
}
addtask patch_extra after do_patch before do_configure

import_patch_with_options()
{
     local patch=3D$1
     local striplevel=3D1
     local apply=3D1
     local opt
     local arg

     while true ; do
         case $patch in
         *' '* )
             printf "patch name %s contains spaces\n" "$patch"
             exit 1
             ;;
         *\;* )
             opt=3D${patch##*;}
             patch=3D${patch%;*}
             case $opt in
             *=3D* )
                 arg=3D${opt##*=3D}
                 opt=3D${opt%=3D*}
                 case $opt in
                 striplevel )
                     striplevel=3D$arg
                     ;;
                 apply )
                     apply=3D$arg
                     ;;
                 * )
                     printf "patch %s specifies unrecognized option:=20
%s\n" \
                            $patch $opt
                     exit 1
                 esac
                 ;;
             * )
                 printf "patch %s specifies option with no argument:=20
%s\n" \
                        $patch $opt
                 exit 1
                 ;;
             esac
             ;;
         * )
             break
             ;;
         esac
     done

     case $apply in
     yes | y | true | t | 1 )
         quilt import -p $striplevel $patch
         ;;
     no | n | false | f | 0 )
         printf "patch %s disabled by apply option\n" $patch
         ;;
     * )
         printf "patch %s specifies invalid boolean value for apply:=20
%s\n" \
                $patch $apply
         ;;
     esac
}


