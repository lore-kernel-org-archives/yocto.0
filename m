Return-Path: <ryan.harkin@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66C92E00CB6; Thu, 21 Feb 2019 01:46:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3019DE0048C
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 01:46:38 -0800 (PST)
Received: by mail-qt1-f174.google.com with SMTP id d2so5083184qti.11
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 01:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=K134TyyWCI298pbPRBPy+dovbdO3rxzTE8R1Xxni2OU=;
	b=bcZmLUkxQdiTl9f8tkn1dV5x7BLlYR9Kypyop4BpTZpdgZjfaCJmWhj0h1qJagzwmv
	x+NENryCqdehIE9fAzI4aV0NyzKD+64zqtZtrjITXe8V0qNAGYGgS1SQ6wEcOa2Qplah
	qilElzdQ5zXPmiKtI+lZ7y/TdDSqLO9klplPB7iAfepT4eI793r2JJK7CcM1Qcf9Bcdq
	G5zYzrRTQq60asxrJeRzi3VecM2Jvh4iJlVztKazoRqkTlTVAi6mw7VzT8rVomUcNMKX
	dTSU8mNJjVO1UcNoSDjOwvcnbGRNHkBnnwaLG51russHnVNhorMpg27WjGSkjru0t0Sq
	IzRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=K134TyyWCI298pbPRBPy+dovbdO3rxzTE8R1Xxni2OU=;
	b=TS0Y/7zyHD1zrFT8B4/FmtYRBOcK+odqVo/zmm8N40UOiwdd3EfLSXeN7naL9VtYM7
	y8/MeigRGDN4PJbQMx14mqOqDDakZZUp27rsCpcfQ84aaA6N8dFzJoNOrNpgfyhR9mwB
	1/e0vHFGtfjdgNhY66/h4PSs2tglCI01DmB0qqHyJ9uTGsOEZTCX4SG+uLfaK2+19EKY
	CRZZmcd0NvgdxHtmsA3TU92IR8CT9lYwuRZG+4e5IBRLP6u87964oC9ndwmzZ7LgARRI
	KqmLz7B4ihlO4gVf8+lO57k1f8kGXhnqEYb6AW3XJvhaZACorr9eXdGs1ET87hjUaNvg
	fJUg==
X-Gm-Message-State: AHQUAubYeS2n9nwaWWucetzRPM75ISsy1v0q3cOmc8FaV8el2br3d4g9
	I2MDfmn5Ic9+gh9EOYWM+SxFJF/CZsK2o6fpGnwjhAyz
X-Google-Smtp-Source: AHgI3IY+2hsexbQHVSWhxdA6/IjEX+Xw3RR0gPz4joccBfA08mtaFxmh66mC0iSKwtMa3wagPAB4i4BOZsINlWJumiw=
X-Received: by 2002:aed:3f81:: with SMTP id s1mr27593477qth.94.1550742396499; 
	Thu, 21 Feb 2019 01:46:36 -0800 (PST)
MIME-Version: 1.0
References: <CAD0U-h+jOtnjkqEVnLQgJRQTP1j-8E4CD-yGhJXTvd==qh4ESQ@mail.gmail.com>
	<0c51b70a69b14c2d974788e9e6418eda@flir.com>
In-Reply-To: <0c51b70a69b14c2d974788e9e6418eda@flir.com>
From: Ryan Harkin <ryan.harkin@linaro.org>
Date: Thu, 21 Feb 2019 09:46:25 +0000
Message-ID: <CAD0U-hJcMvdFTXV6p=ujB=JRmigwF=9-0Sv0f2A416jnc2ZkNA@mail.gmail.com>
To: "Smith, Virgil (US)" <Virgil.Smith@flir.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Problems using MIRRORS variables
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
X-List-Received-Date: Thu, 21 Feb 2019 09:46:41 -0000
Content-Type: multipart/alternative; boundary="000000000000ae8f3b05826459fd"

--000000000000ae8f3b05826459fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Virgil,

On Wed, 20 Feb 2019 at 22:02, Smith, Virgil (US) <Virgil.Smith@flir.com>
wrote:

> Quick _*workaround*_:
>
>    1. Modify/extend your Repo manifest to pull your mirror repos to the
>    appropriate place under downloads/git2.
>    2. Override the non-sha1 SRCREVs with an appropriate SHA1.
>    Either in .bbappend files or via conf file extensions.
>    The mega-manual describes the latter in association with the
>    buildhistory-collect-srcrevs command.
>
>
>
> Item 1 should not be needed, but it works.
>

Thanks for the tip, that's good to know in any case.


>
>
> One can make a fair case that item 2 SHOULD be done.
>
> A mirror is NOT the same thing as the =E2=80=9Cofficial=E2=80=9D repo.  T=
his also gives
> you A clear way to record the version used for the build (though it might
> not have been the way you planned).  It is easier to make this case for
> branches/AUTOREV than tags, but tags _*can*_ change and so fetchers
> bypass the download cache for them.
>

I agree. I'll be working with them to make this change at source.

My current workaround is to branch their code and change the SRC_URI to
point to my own server, although I suppose I should have created my own
layer, with bbappends to override. That would prevent branching their code,
so I might do that anyway.

But we'd like to be able to share code between us without having to perform
such branching/forking, so a MIRRORS setup would be very useful. Either
way, I wanted to report the problems I found along the way, hoping there
might be a solution.

Regards,
Ryan.


>
>
>
>
>
> *Virgil Smith *FLIR Detection
>
>
>
> *From:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> *=
On
> Behalf Of *Ryan Harkin
> *Sent:* Wednesday, February 20, 2019 12:04
> *To:* yocto@yoctoproject.org
> *Subject:* [EXTERNAL] [yocto] Problems using MIRRORS variables
>
>
>
> Hello,
>
>
>
> I'm having a few problems when using the MIRRORS variable for GIT repos. =
I
> see the same problems with the PREMIRRORS variable.
>
>
>
> My use-case is:
>
>
>
> 1. company A has a private layer with SRC_URI that points to private git
> 2. company A needs to share layers with company B
>
> 3. company B cannot access company A's private git tree
>
> 4. company B has a mirror of the git trees with the same contents,
> including SRC_URIs pointing to the company A private git trees
>
>
>
> I have tried to resolve this using the MIRRORS variable in local.conf.
>
>
>
> If SRCREV is a SHA, it seems to work for me.
>
>
>
> However, it fails when the SRCREV is not a fixed SHA, eg. if SRCREV is a
> branch, tag, or ${AUTOREV}. It looks like do_fetch is trying to pull the
> repo to work out the SHA, but before decoding MIRRORS or PREMIRRORS. It
> appears to do an ls-remote on the original repo, not the mirror, and fail=
s.
>
>
>
> The next issue is when using MIRRORS to replace a GIT repo with one using
> SSH. This may simply be a syntax problem on my side.
>
>
>
> Example:
>
>
>
> MIRRORS +=3D \
>
>  git://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git
> <https://protect2.fireeye.com/url?k=3D18e8f1e8-44fcb23e-18eaeb44-0cc47aa8=
d93e-1fcc9aaae925b539&u=3Dhttp://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git>
> \
>
>  ssh://
> git@git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git;protoc=
ol=3Dssh
> <https://protect2.fireeye.com/url?k=3Dcdc73308-91d370de-cdc529a4-0cc47aa8=
d93e-08b211984dc709d5&u=3Dhttp://git@git.linaro.org/landing-teams/working/q=
ualcomm/wcnss-config.git;protocol=3Dssh>
> \n \
>
> "
>
>
>
> The MIRROR doesn't seem to be used at all in the above example. I've trie=
d
> adding ";protocol=3Dhttps" to the first line; it doesn't help, and fails =
in a
> different way, giving a "Exception: KeyError: 'protocol'" error.
>
>
>
> I've shown detailed examples below. People may not need them, but if my
> email isn't clear enough, hopefully they will help explain.
>
>
>
> Setup
>
> --------------------------------------------------
>
> For an example, I'm using Linaro's OE-RPB master. More info here:
> https://protect2.fireeye.com/url?k=3De7212319-bb3560cf-e72339b5-0cc47aa8d=
93e-cd7528c3d8ac86ba&u=3Dhttps://github.com/96boards/oe-rpb-manifest
> <https://protect2.fireeye.com/url?k=3D0f0a22ce-531e6118-0f083862-0cc47aa8=
d93e-6d0fb6a5dfdf7b0d&u=3Dhttps://github.com/96boards/oe-rpb-manifest>
>
>
>
> First, set up the environment:
>
>
>
>   $ mkdir -p ${WORKSPACE}
>
>   $ repo init -u
> https://protect2.fireeye.com/url?k=3D47a0bd31-1bb4fee7-47a2a79d-0cc47aa8d=
93e-27ddccb5db2a6c87&u=3Dhttps://github.com/96boards/oe-rpb-manifest.git
> <https://protect2.fireeye.com/url?k=3D460e0170-1a1a42a6-460c1bdc-0cc47aa8=
d93e-5ea80521ba35bc6d&u=3Dhttps://github.com/96boards/oe-rpb-manifest.git>
> -b master
>
>   $ repo sync
>
>   $ export MACHINE=3Ddragonboard-410c ; export DISTRO=3Drpb ; .
> setup-environment
>
>
>
> Then, make sure it's working:
>
>
>
>   $ bitbake -c do_fetch wcnss-config
>
>
>
> Mod a recipe to use a fake SRC_URI, and test that it no longer works.
>
>
>
>   $ sed -i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/wcnss-config/
> wcnss-config_1.13.bb
> <https://protect2.fireeye.com/url?k=3D896bc539-d57f86ef-8969df95-0cc47aa8=
d93e-c54ec30fcada6dda&u=3Dhttp://wcnss-config_1.13.bb/>
> -e 's#git.linaro.org#git.fake.org#g
> <https://protect2.fireeye.com/url?k=3D106424e0-4c706736-10663e4c-0cc47aa8=
d93e-55e1b1bc921612e1&u=3Dhttp://git.linaro.org/#git.fake.org%23g>
> '
>
>   $ rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*
>
>   $ bitbake -c do_fetch wcnss-config
>
>
> I see this error output, as expected:
>
> ----------------------------------------------------
>
> WARNING: wcnss-config-1.13-r0 do_fetch: Failed to fetch URL git://
> git.fake.org/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmas=
ter;protocol=3Dhttps
> <https://protect2.fireeye.com/url?k=3Db785006d-eb9143bb-b7871ac1-0cc47aa8=
d93e-cbb22c5ba8b8fad2&u=3Dhttp://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps>,
> attempting MIRRORS if available
>
> ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure: Fetch command
> export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
> SSH_AGENT_PID=3D"3371"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ss=
h";
> export
> PATH=3D"/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linu=
x:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-=
linux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-r=
pb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-co=
nfig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testin=
g/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe=
-sysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-=
glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspac=
e-testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gl=
ibc/hosttools";
> export HOME=3D"/home/ryan"; LANG=3DC git -c core.fsyncobjectfiles=3D0 clo=
ne
> --bare --mirror
> https://protect2.fireeye.com/url?k=3D04dc86bc-58c8c56a-04de9c10-0cc47aa8d=
93e-d490cc7f326e5e8b&u=3Dhttps://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git
> <https://protect2.fireeye.com/url?k=3D9dc5102d-c1d153fb-9dc70a81-0cc47aa8=
d93e-17e7d35f41642d46&u=3Dhttps://git.fake.org/landing-teams/working/qualco=
mm/wcnss-config.git>
> /linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org.landing-team=
s.working.qualcomm.wcnss-config.git
> --progress failed with exit code 128, output:
>
> Cloning into bare repository
> '/linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org.landing-tea=
ms.working.qualcomm.wcnss-config.git'...
>
> fatal: unable to access '
> https://protect2.fireeye.com/url?k=3Deced21d8-b0f9620e-ecef3b74-0cc47aa8d=
93e-aad428d08bc0bd34&u=3Dhttps://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git/
> <https://protect2.fireeye.com/url?k=3D2d398219-712dc1cf-2d3b98b5-0cc47aa8=
d93e-8d652bfea4f1bb72&u=3Dhttps://git.fake.org/landing-teams/working/qualco=
mm/wcnss-config.git/>':
> Could not resolve host: git.fake.org
> <https://protect2.fireeye.com/url?k=3D1f079e69-4313ddbf-1f0584c5-0cc47aa8=
d93e-cfef69661f83cab4&u=3Dhttp://git.fake.org/>
>
>
>
> ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure for URL: 'git://
> git.fake.org/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmas=
ter;protocol=3Dhttps
> <https://protect2.fireeye.com/url?k=3D3e4b0a5e-625f4988-3e4910f2-0cc47aa8=
d93e-8a57ed80d72fe8e4&u=3Dhttp://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps>'.
> Unable to fetch URL from any source.
>
> ERROR: wcnss-config-1.13-r0 do_fetch:
>
> ERROR: wcnss-config-1.13-r0 do_fetch: Function failed: base_do_fetch
>
> ERROR: Logfile of failure stored in:
> /linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-=
linux/wcnss-config/1.13-r0/temp/log.do_fetch.2525
>
> ERROR: Task
> (/linaro/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/r=
ecipes-bsp/wcnss-config/wcnss-config_1.13.bb:do_fetch)
> failed with exit code '1'
>
> ----------------------------------------------------
>
>
>
>
>
> SRCREV PROBLEM
>
> --------------------------------------------------
>
> Set MIRRORS in local.conf and re-test. It should work again.
>
>
>
> $ cat << EOF >> conf/local.conf
>
> MIRRORS +=3D " \\
>
>  git://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git
> <https://protect2.fireeye.com/url?k=3Dc686fc40-9a92bf96-c684e6ec-0cc47aa8=
d93e-529d34c309f121f8&u=3Dhttp://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git>
> \\
>
>  git://git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git
> <https://protect2.fireeye.com/url?k=3D4d15febc-1101bd6a-4d17e410-0cc47aa8=
d93e-5483e8e34255846d&u=3Dhttp://git.linaro.org/landing-teams/working/qualc=
omm/wcnss-config.git>
> \n \\
>
> "
>
> EOF
>
> $ rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*
>
> $ bitbake -c do_fetch wcnss-config
>
>
>
> All I see in the build is a warning, and the downloads/git2 directory is
> populated as expected:
>
>
>
> $ ll
>
> total 12K
>
> lrwxrwxrwx 1 ryan ryan  110 Feb 20 17:15
> git.fake.org.landing-teams.working.qualcomm.wcnss-config.git ->
> /linaro/oe-rpb-workspace-testing/downloads/git2/git.linaro.org.landing-te=
ams.working.qualcomm.wcnss-config.git/
>
> -rw-rw-r-- 1 ryan ryan    6 Feb 20 17:15
> git.fake.org.landing-teams.working.qualcomm.wcnss-config.git.done
>
> drwxrwxr-x 7 ryan ryan 4.0K Feb 20 17:15
> git.linaro.org.landing-teams.working.qualcomm.wcnss-config.git/
>
>
>
> Change SRCREV to ${AUTOREV} and retest.
>
>
>
> $ sed -i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/wcnss-config/
> wcnss-config_1.13.bb
> <https://protect2.fireeye.com/url?k=3Df5482b4f-a95c6899-f54a31e3-0cc47aa8=
d93e-2fc71701340330e7&u=3Dhttp://wcnss-config_1.13.bb/>
> -e 's#^SRCREV.*#SRCREV =3D "${AUTOREV}"#'
>
> $ rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*
>
> $ bitbake -c do_fetch wcnss-config
>
>
> I see this failure:
>
>
>
> ERROR: ExpansionError during parsing
> /linaro/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/re=
cipes-bsp/wcnss-config/
> wcnss-config_1.13.bb######################################
> <https://protect2.fireeye.com/url?k=3Db03d6bea-ec29283c-b03f7146-0cc47aa8=
d93e-fd7b86554c1ca77c&u=3Dhttp://wcnss-config_1.13.bb/#%23%23%23%23%23%23%2=
3%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%2=
3%23%23%23%23%23>
>                | ETA:  0:00:05
>
> Traceback (most recent call last):
>
>   File
> "/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__init__.py", lin=
e
> 1170, in srcrev_internal_helper(ud=3D<bb.fetch2.FetchData object at
> 0x7fd7884c8668>, d=3D<bb.data_smart.DataSmart object at 0x7fd78988e748>,
> name=3D'default'):
>
>          if srcrev =3D=3D "AUTOINC":
>
>     >        srcrev =3D ud.method.latest_revision(ud, d, name)
>
>
>
>   File
> "/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__init__.py", lin=
e
> 1565, in Git.latest_revision(ud=3D<bb.fetch2.FetchData object at
> 0x7fd7884c8668>, d=3D<bb.data_smart.DataSmart object at 0x7fd78988e748>,
> name=3D'default'):
>
>              except KeyError:
>
>     >            revs[key] =3D rev =3D self._latest_revision(ud, d, name)
>
>                  return rev
>
>   File "/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/git.py",
> line 594, in Git._latest_revision(ud=3D<bb.fetch2.FetchData object at
> 0x7fd7884c8668>, d=3D<bb.data_smart.DataSmart object at 0x7fd78988e748>,
> name=3D'default'):
>
>              """
>
>     >        output =3D self._lsremote(ud, d, "")
>
>              # Tags of the form ^{} may not work, need to fallback to
> other form
>
>   File "/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/git.py",
> line 583, in Git._lsremote(ud=3D<bb.fetch2.FetchData object at
> 0x7fd7884c8668>, d=3D<bb.data_smart.DataSmart object at 0x7fd78988e748>,
> search=3D''):
>
>                      bb.fetch2.check_network_access(d, cmd, repourl)
>
>     >            output =3D runfetchcmd(cmd, d, True)
>
>                  if not output:
>
>   File
> "/linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__init__.py", lin=
e
> 888, in runfetchcmd(cmd=3D'export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
> SSH_AGENT_PID=3D"3371"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ss=
h";
> export
> PATH=3D"/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linu=
x:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-=
linux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-r=
pb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-co=
nfig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testin=
g/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe=
-sysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-=
glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspac=
e-testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gl=
ibc/hosttools";
> export HOME=3D"/home/ryan"; git -c core.fsyncobjectfiles=3D0 ls-remote
> https://protect2.fireeye.com/url?k=3Da526d02d-f93293fb-a524ca81-0cc47aa8d=
93e-3bb26c47932809ba&u=3Dhttps://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git
> <https://protect2.fireeye.com/url?k=3Dba04ce85-e6108d53-ba06d429-0cc47aa8=
d93e-e81e1e6b3f8b767f&u=3Dhttps://git.fake.org/landing-teams/working/qualco=
mm/wcnss-config.git>
> ', d=3D<bb.data_smart.DataSmart object at 0x7fd78988e748>, quiet=3DTrue,
> cleanup=3D[], log=3DNone, workdir=3DNone):
>
>
>
>     >        raise FetchError(error_message)
>
>
>
> bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expressio=
n
> was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError:
> Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
> SSH_AGENT_PID=3D"3371"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ss=
h";
> export
> PATH=3D"/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linu=
x:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-=
linux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-r=
pb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-co=
nfig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testin=
g/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe=
-sysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-=
glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspac=
e-testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gl=
ibc/hosttools";
> export HOME=3D"/home/ryan"; git -c core.fsyncobjectfiles=3D0 ls-remote
> https://protect2.fireeye.com/url?k=3Dd34d8d14-8f59cec2-d34f97b8-0cc47aa8d=
93e-ece1a2e77b35a928&u=3Dhttps://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git
> <https://protect2.fireeye.com/url?k=3Db2a84fb4-eebc0c62-b2aa5518-0cc47aa8=
d93e-371995473aa70acc&u=3Dhttps://git.fake.org/landing-teams/working/qualco=
mm/wcnss-config.git>
> failed with exit code 128, output:
>
> fatal: unable to access '
> https://protect2.fireeye.com/url?k=3Da72c0f65-fb384cb3-a72e15c9-0cc47aa8d=
93e-f721743056161329&u=3Dhttps://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git/
> <https://protect2.fireeye.com/url?k=3D7c31f850-2025bb86-7c33e2fc-0cc47aa8=
d93e-913458af0bd88749&u=3Dhttps://git.fake.org/landing-teams/working/qualco=
mm/wcnss-config.git/>':
> Could not resolve host: git.fake.org
> <https://protect2.fireeye.com/url?k=3D2788f5a7-7b9cb671-278aef0b-0cc47aa8=
d93e-4cf527ffc9088a66&u=3Dhttp://git.fake.org/>
>
>
>
> A similar error happens if you use a tag rather than ${AUTOREV}:
>
>
>
> $ sed -i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/wcnss-config/
> wcnss-config_1.13.bb
> <https://protect2.fireeye.com/url?k=3D5703404c-0b17039a-57015ae0-0cc47aa8=
d93e-ea4cd3a72e60d4d3&u=3Dhttp://wcnss-config_1.13.bb/>
> -e 's#^SRCREV.*#SRCREV =3D "debian/1.13"#'
>
> $ rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*
>
> $ bitbake -c do_fetch wcnss-config
>
>
>
> These are the messages I see:
>
>
>
> ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure: Fetch command
> export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
> SSH_AGENT_PID=3D"3371"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ss=
h";
> export
> PATH=3D"/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linu=
x:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-=
linux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-r=
pb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-co=
nfig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testin=
g/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe=
-sysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-=
glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspac=
e-testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gl=
ibc/hosttools";
> export HOME=3D"/home/ryan"; git -c core.fsyncobjectfiles=3D0 ls-remote
> https://protect2.fireeye.com/url?k=3D406f0776-1c7b44a0-406d1dda-0cc47aa8d=
93e-a34fc0276b9f7193&u=3Dhttps://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git
> <https://protect2.fireeye.com/url?k=3D004d9b16-5c59d8c0-004f81ba-0cc47aa8=
d93e-e4766c8b68946d93&u=3Dhttps://git.fake.org/landing-teams/working/qualco=
mm/wcnss-config.git>
> failed with exit code 128, output:
>
> fatal: unable to access '
> https://protect2.fireeye.com/url?k=3D74555bc8-2841181e-74574164-0cc47aa8d=
93e-52823b94e880c977&u=3Dhttps://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git/
> <https://protect2.fireeye.com/url?k=3Dfa696296-a67d2140-fa6b783a-0cc47aa8=
d93e-6c4d08c7ed4fa99b&u=3Dhttps://git.fake.org/landing-teams/working/qualco=
mm/wcnss-config.git/>':
> Could not resolve host: git.fake.org
> <https://protect2.fireeye.com/url?k=3D248f6c05-789b2fd3-248d76a9-0cc47aa8=
d93e-d031a7f235d50f3f&u=3Dhttp://git.fake.org/>
>
>
>
> ERROR: wcnss-config-1.13-r0 do_fetch:
>
> ERROR: wcnss-config-1.13-r0 do_fetch: Function failed: base_do_fetch
>
> ERROR: Logfile of failure stored in:
> /linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-=
linux/wcnss-config/1.13-r0/temp/log.do_fetch.5673
>
> ERROR: Task
> (/linaro/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/r=
ecipes-bsp/wcnss-config/wcnss-config_1.13.bb:do_fetch)
> failed with exit code '1'
>
>
>
>
>
>
>
> SSH MIRRORS Problem
>
> --------------------------------------------
>
> From a clean setup as above with the SRC_URI point to to git.fake.org...
>
>
>
> $ sed -i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/wcnss-config/
> wcnss-config_1.13.bb
> <https://protect2.fireeye.com/url?k=3Da8182e0d-f40c6ddb-a81a34a1-0cc47aa8=
d93e-d8a09f72a98e05f9&u=3Dhttp://wcnss-config_1.13.bb/>
> -e 's#git.linaro.org#git.fake.org#g
> <https://protect2.fireeye.com/url?k=3D7e2710a0-22335376-7e250a0c-0cc47aa8=
d93e-623f51f874ff8cb3&u=3Dhttp://git.linaro.org/#git.fake.org%23g>
> '
>
> $ cat << EOF >> conf/local.conf
>
> MIRRORS +=3D " \\
>
>  git://git.fake.org/landing-teams/working/qualcomm/wcnss-config.git
> <https://protect2.fireeye.com/url?k=3Dca16bb42-9602f894-ca14a1ee-0cc47aa8=
d93e-6b6b803d58afb693&u=3Dhttp://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git>
> \\
>
>  ssh://
> git@git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git;protoc=
ol=3Dssh
> <https://protect2.fireeye.com/url?k=3D5d6cc0b4-01788362-5d6eda18-0cc47aa8=
d93e-2acfbc51148e1d32&u=3Dhttp://git@git.linaro.org/landing-teams/working/q=
ualcomm/wcnss-config.git;protocol=3Dssh>
> \n \\
>
> "
>
> EOF
>
> $ rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcnss-config*
>
> $ bitbake -c do_fetch wcnss-config
>
>
>
> These are the errors I see:
>
>
>
> WARNING: wcnss-config-1.13-r0 do_fetch: Failed to fetch URL git://
> git.fake.org/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmas=
ter;protocol=3Dhttps
> <https://protect2.fireeye.com/url?k=3D8698c138-da8c82ee-869adb94-0cc47aa8=
d93e-28cf445e13336db0&u=3Dhttp://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps>,
> attempting MIRRORS if available
>
> ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure: Fetch command
> export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export
> SSH_AGENT_PID=3D"3371"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ss=
h";
> export
> PATH=3D"/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linu=
x:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-=
linux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-r=
pb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-co=
nfig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testin=
g/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe=
-sysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-=
glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspac=
e-testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gl=
ibc/hosttools";
> export HOME=3D"/home/ryan"; LANG=3DC git -c core.fsyncobjectfiles=3D0 clo=
ne
> --bare --mirror
> https://protect2.fireeye.com/url?k=3Dfa4abe42-a65efd94-fa48a4ee-0cc47aa8d=
93e-b6b91bf272908847&u=3Dhttps://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git
> <https://protect2.fireeye.com/url?k=3De244c2d6-be508100-e246d87a-0cc47aa8=
d93e-7f952daaaf46cbb6&u=3Dhttps://git.fake.org/landing-teams/working/qualco=
mm/wcnss-config.git>
> /linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org.landing-team=
s.working.qualcomm.wcnss-config.git
> --progress failed with exit code 128, output:
>
> Cloning into bare repository
> '/linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org.landing-tea=
ms.working.qualcomm.wcnss-config.git'...
>
> fatal: unable to access '
> https://protect2.fireeye.com/url?k=3Dd022c4f9-8c36872f-d020de55-0cc47aa8d=
93e-4b2e8b54b85a9a9a&u=3Dhttps://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git/
> <https://protect2.fireeye.com/url?k=3D3420972a-6834d4fc-34228d86-0cc47aa8=
d93e-14fedaf78b95862a&u=3Dhttps://git.fake.org/landing-teams/working/qualco=
mm/wcnss-config.git/>':
> Could not resolve host: git.fake.org
> <https://protect2.fireeye.com/url?k=3D4c2d844e-1039c798-4c2f9ee2-0cc47aa8=
d93e-c9433e6440d277b0&u=3Dhttp://git.fake.org/>
>
>
>
> ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failure for URL: 'git://
> git.fake.org/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmas=
ter;protocol=3Dhttps
> <https://protect2.fireeye.com/url?k=3Df3655f0f-af711cd9-f36745a3-0cc47aa8=
d93e-89fc024ac7cad7d5&u=3Dhttp://git.fake.org/landing-teams/working/qualcom=
m/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps>'.
> Unable to fetch URL from any source.
>
> ERROR: wcnss-config-1.13-r0 do_fetch:
>
> ERROR: wcnss-config-1.13-r0 do_fetch: Function failed: base_do_fetch
>
> ERROR: Logfile of failure stored in:
> /linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-=
linux/wcnss-config/1.13-r0/temp/log.do_fetch.7701
>
> ERROR: Task
> (/linaro/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/r=
ecipes-bsp/wcnss-config/wcnss-config_1.13.bb:do_fetch)
> failed with exit code '1'
>
>
>
> It looks like the MIRRORS variable hasn't replaced the repo at all.
>
>
>
> Regards,
>
> Ryan.
>
> ------------------------------
>
> Notice to recipient: This email is meant for only the intended recipient
> of the transmission, and may be a communication privileged by law, subjec=
t
> to export control restrictions or that otherwise contains proprietary
> information. If you receive this email by mistake, please notify us
> immediately by replying to this message and then destroy it and do not
> review, disclose, copy or distribute it. Thank you in advance for your
> cooperation.
>

--000000000000ae8f3b05826459fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Virgil,</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Wed, 20 Feb 2019 at 22:02, Smith, Virgil=
 (US) &lt;<a href=3D"mailto:Virgil.Smith@flir.com">Virgil.Smith@flir.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-7496283817843801677WordSection1">
<p class=3D"MsoNormal">Quick _<i>workaround</i>_:<u></u><u></u></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"gmail-m_-7496283817843801677MsoListParagraph" style=3D"margin-=
left:0in">Modify/extend your Repo manifest to pull your mirror repos to the=
 appropriate place under downloads/git2.<u></u><u></u></li><li class=3D"gma=
il-m_-7496283817843801677MsoListParagraph" style=3D"margin-left:0in">Overri=
de the non-sha1 SRCREVs with an appropriate SHA1.<br>
Either in .bbappend files or via conf file extensions.<br>
The mega-manual describes the latter in association with the buildhistory-c=
ollect-srcrevs command.<u></u><u></u></li></ol>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Item 1 should not be needed, but it works.</p></div>=
</div></blockquote><div><br></div><div>Thanks for the tip, that&#39;s good =
to=C2=A0know in any case.</div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-749628381=
7843801677WordSection1"><p class=3D"MsoNormal"><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">One can make a fair case that item 2 SHOULD be done.=
 <u></u><u></u></p>
<p class=3D"MsoNormal">A mirror is NOT the same thing as the =E2=80=9Coffic=
ial=E2=80=9D repo.=C2=A0 This also gives you A clear way to record the vers=
ion used for the build (though it might not have been the way you planned).=
=C2=A0 It is easier to make this case for branches/AUTOREV than
 tags, but tags _<i>can</i>_ change and so fetchers bypass the download cac=
he for them.</p></div></div></blockquote><div><br></div><div>I agree. I&#39=
;ll be working with them to make this change at source.</div><div><br></div=
><div>My current workaround is to branch their code and change the SRC_URI =
to point to my own server, although I suppose I should have created my own =
layer, with bbappends to override. That would prevent branching their code,=
 so I might do that anyway.</div><div><br></div><div>But we&#39;d like to b=
e able to share code between us without having to perform such branching/fo=
rking, so a MIRRORS setup would be very useful. Either way, I wanted to rep=
ort the problems I found along the way, hoping there might be a solution.</=
div><div><br></div><div>Regards,</div><div>Ryan.</div><div>=C2=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div clas=
s=3D"gmail-m_-7496283817843801677WordSection1"><p class=3D"MsoNormal"><u></=
u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8pt;font-family:Verdana,=
sans-serif;color:rgb(51,51,51)">Virgil Smith<br>
</span></b><span style=3D"font-size:8pt;font-family:Verdana,sans-serif;colo=
r:rgb(51,51,51)">FLIR Detection</span><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> &lt;<a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Ryan Harkin<br>
<b>Sent:</b> Wednesday, February 20, 2019 12:04<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [EXTERNAL] [yocto] Problems using MIRRORS variables<u></u><=
u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I&#39;m having a few problems when using the MIRRORS=
 variable for GIT repos. I see the same problems with the PREMIRRORS variab=
le.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">My use-case is:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;background:white">1. c=
ompany A has a private layer with SRC_URI that points to private git</span>=
<span style=3D"font-size:12pt"><br>
<span style=3D"background:white">2. company A needs to share layers with co=
mpany B</span></span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">3. company B cannot access company A&#39;s private g=
it tree<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">4. company B has a mirror of the git trees with the =
same contents, including SRC_URIs pointing to the company A private git tre=
es<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I have tried to resolve this using the MIRRORS varia=
ble in local.conf.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">If SRCREV is a SHA, it seems to work for me.<u></u><=
u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">However, it fails when the SRCREV is not a fixed SHA=
, eg. if SRCREV is a branch, tag, or ${AUTOREV}. It looks like do_fetch is =
trying to pull the repo to work out the SHA, but before decoding MIRRORS or=
 PREMIRRORS. It appears to do an ls-remote
 on the original repo, not the mirror, and fails.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The next issue is when using MIRRORS to replace a GI=
T repo with one using SSH. This may simply be a syntax problem on my side.<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Example:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">MIRRORS=C2=A0+=3D \<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;background:white">=C2=
=A0git://<a href=3D"https://protect2.fireeye.com/url?k=3D18e8f1e8-44fcb23e-=
18eaeb44-0cc47aa8d93e-1fcc9aaae925b539&amp;u=3Dhttp://git.fake.org/landing-=
teams/working/qualcomm/wcnss-config.git" target=3D"_blank">git.fake.org/lan=
ding-teams/working/qualcomm/wcnss-config.git</a>
 \</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0ssh://<a href=3D"https://protect2.fireeye.com/=
url?k=3Dcdc73308-91d370de-cdc529a4-0cc47aa8d93e-08b211984dc709d5&amp;u=3Dht=
tp://git@git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git;pro=
tocol=3Dssh" target=3D"_blank">git@git.linaro.org/landing-teams/working/qua=
lcomm/wcnss-config.git;protocol=3Dssh</a>
 \n \<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The MIRROR doesn&#39;t seem to be used at all in the=
 above example. I&#39;ve tried adding &quot;;protocol=3Dhttps&quot; to the =
first line; it doesn&#39;t help, and fails in a different way, giving a &qu=
ot;Exception: KeyError: &#39;protocol&#39;&quot; error.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt">I&#39;ve shown detailed examples below. People may not need them, but=
 if my email isn&#39;t clear enough, hopefully they will help explain.<u></=
u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">Setup<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt">--------------------------------------------------<u></u><u></u></spa=
n></p>
</div>
<p class=3D"MsoNormal">For an example, I&#39;m using Linaro&#39;s OE-RPB ma=
ster. More info here:=C2=A0<a href=3D"https://protect2.fireeye.com/url?k=3D=
0f0a22ce-531e6118-0f083862-0cc47aa8d93e-6d0fb6a5dfdf7b0d&amp;u=3Dhttps://gi=
thub.com/96boards/oe-rpb-manifest" target=3D"_blank">https://protect2.firee=
ye.com/url?k=3De7212319-bb3560cf-e72339b5-0cc47aa8d93e-cd7528c3d8ac86ba&amp=
;u=3Dhttps://github.com/96boards/oe-rpb-manifest</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">First, set up the environment:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 $ mkdir -p ${WORKSPACE}<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">=C2=A0 $ repo init -u <a href=3D"https://protect2.fi=
reeye.com/url?k=3D460e0170-1a1a42a6-460c1bdc-0cc47aa8d93e-5ea80521ba35bc6d&=
amp;u=3Dhttps://github.com/96boards/oe-rpb-manifest.git" target=3D"_blank">
https://protect2.fireeye.com/url?k=3D47a0bd31-1bb4fee7-47a2a79d-0cc47aa8d93=
e-27ddccb5db2a6c87&amp;u=3Dhttps://github.com/96boards/oe-rpb-manifest.git<=
/a> -b master<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 $ repo sync<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 $ export MACHINE=3Ddragonboard-410c ; export =
DISTRO=3Drpb ; . setup-environment<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Then, make sure it&#39;s working:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 $ bitbake -c do_fetch wcnss-config<u></u><u><=
/u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Mod a recipe to use a fake SRC_URI, and test that it=
 no longer works.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">=C2=A0 $ sed -i ${WORKSPACE}/layers/meta-qcom/recipe=
s-bsp/wcnss-config/<a href=3D"https://protect2.fireeye.com/url?k=3D896bc539=
-d57f86ef-8969df95-0cc47aa8d93e-c54ec30fcada6dda&amp;u=3Dhttp://wcnss-confi=
g_1.13.bb/" target=3D"_blank">wcnss-config_1.13.bb</a> -e &#39;s#<a href=3D=
"https://protect2.fireeye.com/url?k=3D106424e0-4c706736-10663e4c-0cc47aa8d9=
3e-55e1b1bc921612e1&amp;u=3Dhttp://git.linaro.org/#git.fake.org%23g" target=
=3D"_blank">git.linaro.org#git.fake.org#g</a>&#39;<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0 $=C2=A0rm -rf tmp-rpb-glibc/ ../downloads/git=
2/*wcnss-config*<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt">=C2=A0 $ bitbake -c do_fetch wcnss-config<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><br>
I see this error output, as expected:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">----------------------------------------------------=
<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">WARNING: wcnss-config-1.13-r0 do_fetch: Failed to fe=
tch URL git://<a href=3D"https://protect2.fireeye.com/url?k=3Db785006d-eb91=
43bb-b7871ac1-0cc47aa8d93e-cbb22c5ba8b8fad2&amp;u=3Dhttp://git.fake.org/lan=
ding-teams/working/qualcomm/wcnss-config.git;branch=3Dmaster;protocol=3Dhtt=
ps" target=3D"_blank">git.fake.org/landing-teams/working/qualcomm/wcnss-con=
fig.git;branch=3Dmaster;protocol=3Dhttps</a>,
 attempting MIRRORS if available<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failur=
e: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADDRES=
S=3D&quot;unix:path=3D/run/user/1000/bus&quot;; export SSH_AGENT_PID=3D&quo=
t;3371&quot;; export SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring/ssh&quot;=
;
 export PATH=3D&quot;/linaro/oe-rpb-workspace-testing/layers/openembedded-c=
ore/scripts:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/a=
ll-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-=
linaro-linux:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/=
all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-works=
pace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.1=
3-r0/recipe-sysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-r=
pb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-=
native/sbin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/a=
ll-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-r=
pb-workspace-testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb=
/tmp-rpb-glibc/hosttools&quot;;
 export HOME=3D&quot;/home/ryan&quot;; LANG=3DC git -c core.fsyncobjectfile=
s=3D0 clone --bare --mirror
<a href=3D"https://protect2.fireeye.com/url?k=3D9dc5102d-c1d153fb-9dc70a81-=
0cc47aa8d93e-17e7d35f41642d46&amp;u=3Dhttps://git.fake.org/landing-teams/wo=
rking/qualcomm/wcnss-config.git" target=3D"_blank">
https://protect2.fireeye.com/url?k=3D04dc86bc-58c8c56a-04de9c10-0cc47aa8d93=
e-d490cc7f326e5e8b&amp;u=3Dhttps://git.fake.org/landing-teams/working/qualc=
omm/wcnss-config.git</a> /linaro/oe-rpb-workspace-testing/downloads/git2/gi=
t.fake.org.landing-teams.working.qualcomm.wcnss-config.git
 --progress failed with exit code 128, output:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Cloning into bare repository &#39;/linaro/oe-rpb-wor=
kspace-testing/downloads/git2/git.fake.org.landing-teams.working.qualcomm.w=
cnss-config.git&#39;...<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">fatal: unable to access &#39;<a href=3D"https://prot=
ect2.fireeye.com/url?k=3D2d398219-712dc1cf-2d3b98b5-0cc47aa8d93e-8d652bfea4=
f1bb72&amp;u=3Dhttps://git.fake.org/landing-teams/working/qualcomm/wcnss-co=
nfig.git/" target=3D"_blank">https://protect2.fireeye.com/url?k=3Deced21d8-=
b0f9620e-ecef3b74-0cc47aa8d93e-aad428d08bc0bd34&amp;u=3Dhttps://git.fake.or=
g/landing-teams/working/qualcomm/wcnss-config.git/</a>&#39;:
 Could not resolve host: <a href=3D"https://protect2.fireeye.com/url?k=3D1f=
079e69-4313ddbf-1f0584c5-0cc47aa8d93e-cfef69661f83cab4&amp;u=3Dhttp://git.f=
ake.org/" target=3D"_blank">
git.fake.org</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">ERROR: wcnss-config-1.13-r0 do_fetch: Fetcher failur=
e for URL: &#39;git://<a href=3D"https://protect2.fireeye.com/url?k=3D3e4b0=
a5e-625f4988-3e4910f2-0cc47aa8d93e-8a57ed80d72fe8e4&amp;u=3Dhttp://git.fake=
.org/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmaster;protoc=
ol=3Dhttps" target=3D"_blank">git.fake.org/landing-teams/working/qualcomm/w=
cnss-config.git;branch=3Dmaster;protocol=3Dhttps</a>&#39;.
 Unable to fetch URL from any source.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">ERROR: wcnss-config-1.13-r0 do_fetch:=C2=A0<u></u><u=
></u></p>
</div>
<div>
<p class=3D"MsoNormal">ERROR: wcnss-config-1.13-r0 do_fetch: Function faile=
d: base_do_fetch<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /linaro/oe-rpb-=
workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-confi=
g/1.13-r0/temp/log.do_fetch.2525<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">ERROR: Task (/linaro/oe-rpb-workspace-testing/build-=
rpb/conf/../../layers/meta-qcom/recipes-bsp/wcnss-config/wcnss-config_1.13.=
bb:do_fetch) failed with exit code &#39;1&#39;<u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;background:white">----=
------------------------------------------------</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;background:white">SRCR=
EV PROBLEM<u></u><u></u></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">--------------------------------------------------<u=
></u><u></u></span></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;background:white">Set =
MIRRORS in local.conf and re-test. It should work again.</span><u></u><u></=
u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">$ cat &lt;&lt; EOF =
&gt;&gt; conf/local.conf<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">MIRRORS +=3D &quot;=
 \\<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0git://<a href=
=3D"https://protect2.fireeye.com/url?k=3Dc686fc40-9a92bf96-c684e6ec-0cc47aa=
8d93e-529d34c309f121f8&amp;u=3Dhttp://git.fake.org/landing-teams/working/qu=
alcomm/wcnss-config.git" target=3D"_blank">git.fake.org/landing-teams/worki=
ng/qualcomm/wcnss-config.git</a>
 \\<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0git://<a href=
=3D"https://protect2.fireeye.com/url?k=3D4d15febc-1101bd6a-4d17e410-0cc47aa=
8d93e-5483e8e34255846d&amp;u=3Dhttp://git.linaro.org/landing-teams/working/=
qualcomm/wcnss-config.git" target=3D"_blank">git.linaro.org/landing-teams/w=
orking/qualcomm/wcnss-config.git</a>
 \n \\<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">&quot;<u></u><u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">EOF<u></u><u></u></=
span></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">$=C2=A0rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcns=
s-config*<u></u><u></u></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">$ bitbake -c do_fetch wcnss-config<u></u><u></u></sp=
an></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"background:white">All I see in the bu=
ild is a warning, and the downloads/git2 directory is populated as expected=
:<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">$ ll<u></u><u></u><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">total 12K<u></u><u>=
</u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">lrwxrwxrwx 1 ryan r=
yan=C2=A0 110 Feb 20 17:15 git.fake.org.landing-teams.working.qualcomm.wcns=
s-config.git -&gt; /linaro/oe-rpb-workspace-testing/downloads/git2/git.lina=
ro.org.landing-teams.working.qualcomm.wcnss-config.git/<u></u><u></u></span=
></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">-rw-rw-r-- 1 ryan r=
yan=C2=A0 =C2=A0 6 Feb 20 17:15 git.fake.org.landing-teams.working.qualcomm=
.wcnss-config.git.done<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">drwxrwxr-x 7 ryan r=
yan 4.0K Feb 20 17:15 git.linaro.org.landing-teams.working.qualcomm.wcnss-c=
onfig.git/<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">Change SRCREV to ${=
AUTOREV} and retest.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">$ sed -i ${WORKSPAC=
E}/layers/meta-qcom/recipes-bsp/wcnss-config/<a href=3D"https://protect2.fi=
reeye.com/url?k=3Df5482b4f-a95c6899-f54a31e3-0cc47aa8d93e-2fc71701340330e7&=
amp;u=3Dhttp://wcnss-config_1.13.bb/" target=3D"_blank">wcnss-config_1.13.b=
b</a>
 -e &#39;s#^SRCREV.*#SRCREV =3D &quot;${AUTOREV}&quot;#&#39;<u></u><u></u><=
/span></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">$=C2=A0rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcns=
s-config*<u></u><u></u></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">$ bitbake -c do_fetch wcnss-config<u></u><u></u></sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"background:white"><br>
I see this failure:<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: ExpansionErr=
or during parsing /linaro/oe-rpb-workspace-testing/build-rpb/conf/../../lay=
ers/meta-qcom/recipes-bsp/wcnss-config/<a href=3D"https://protect2.fireeye.=
com/url?k=3Db03d6bea-ec29283c-b03f7146-0cc47aa8d93e-fd7b86554c1ca77c&amp;u=
=3Dhttp://wcnss-config_1.13.bb/#%23%23%23%23%23%23%23%23%23%23%23%23%23%23%=
23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23%23" targe=
t=3D"_blank">wcnss-config_1.13.bb######################################</a>=
=C2=A0
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| ETA:=C2=A0 0:00:0=
5<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">Traceback (most rec=
ent call last):<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 File &quot;/=
linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__init__.py&quot;, li=
ne 1170, in srcrev_internal_helper(ud=3D&lt;bb.fetch2.FetchData object at 0=
x7fd7884c8668&gt;, d=3D&lt;bb.data_smart.DataSmart object at 0x7fd78988e748=
&gt;,
 name=3D&#39;default&#39;):<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if srcrev =3D=3D &quot;AUTOINC&quot;:<u></u><u></u></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 &gt;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 srcrev =3D ud.method.latest_revision(ud, d, nam=
e)<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 =C2=
=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 File &quot;/=
linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__init__.py&quot;, li=
ne 1565, in Git.latest_revision(ud=3D&lt;bb.fetch2.FetchData object at 0x7f=
d7884c8668&gt;, d=3D&lt;bb.data_smart.DataSmart object at 0x7fd78988e748&gt=
;,
 name=3D&#39;default&#39;):<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0except KeyError:<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 &gt;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 revs[key] =3D rev =3D self._lates=
t_revision(ud, d, name)<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return rev<u></u><u></u></span=
></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 File &quot;/=
linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/git.py&quot;, line 59=
4, in Git._latest_revision(ud=3D&lt;bb.fetch2.FetchData object at 0x7fd7884=
c8668&gt;, d=3D&lt;bb.data_smart.DataSmart object at 0x7fd78988e748&gt;,
 name=3D&#39;default&#39;):<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;&quot;&quot;<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 &gt;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 output =3D self._lsremote(ud, d, &quot;&quot;)<=
u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Tags of the form ^{} may not work, need to=
 fallback to other form<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 File &quot;/=
linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/git.py&quot;, line 58=
3, in Git._lsremote(ud=3D&lt;bb.fetch2.FetchData object at 0x7fd7884c8668&g=
t;, d=3D&lt;bb.data_smart.DataSmart object at 0x7fd78988e748&gt;, search=3D=
&#39;&#39;):<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.fetch2.check_=
network_access(d, cmd, repourl)<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 &gt;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 output =3D runfetchcmd(cmd, d, Tr=
ue)<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if not output:<u></u><u></u></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 File &quot;/=
linaro/oe-rpb-workspace-testing/bitbake/lib/bb/fetch2/__init__.py&quot;, li=
ne 888, in runfetchcmd(cmd=3D&#39;export PSEUDO_DISABLED=3D1; export DBUS_S=
ESSION_BUS_ADDRESS=3D&quot;unix:path=3D/run/user/1000/bus&quot;; export SSH=
_AGENT_PID=3D&quot;3371&quot;;
 export SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring/ssh&quot;; export PATH=
=3D&quot;/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts:=
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linux=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-rp=
b-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-con=
fig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testing=
/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-=
sysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-g=
libc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin:=
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspace=
-testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gli=
bc/hosttools&quot;;
 export HOME=3D&quot;/home/ryan&quot;; git -c core.fsyncobjectfiles=3D0 ls-=
remote <a href=3D"https://protect2.fireeye.com/url?k=3Dba04ce85-e6108d53-ba=
06d429-0cc47aa8d93e-e81e1e6b3f8b767f&amp;u=3Dhttps://git.fake.org/landing-t=
eams/working/qualcomm/wcnss-config.git" target=3D"_blank">
https://protect2.fireeye.com/url?k=3Da526d02d-f93293fb-a524ca81-0cc47aa8d93=
e-3bb26c47932809ba&amp;u=3Dhttps://git.fake.org/landing-teams/working/qualc=
omm/wcnss-config.git</a> &#39;, d=3D&lt;bb.data_smart.DataSmart object at 0=
x7fd78988e748&gt;, quiet=3DTrue, cleanup=3D[], log=3DNone,
 workdir=3DNone):<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 =C2=
=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 &gt;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise FetchError(error_message)<u></u><u></u></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">=C2=A0 =C2=A0 =C2=
=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">bb.data_smart.Expan=
sionError: Failure expanding variable SRCPV, expression was
<a href=3D"mailto:$%7b@bb.fetch2.get_srcrev(d)%7d" target=3D"_blank">${@bb.=
fetch2.get_srcrev(d)}</a> which triggered exception FetchError: Fetcher fai=
lure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS_ADD=
RESS=3D&quot;unix:path=3D/run/user/1000/bus&quot;; export SSH_AGENT_PID=3D&=
quot;3371&quot;;
 export SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring/ssh&quot;; export PATH=
=3D&quot;/linaro/oe-rpb-workspace-testing/layers/openembedded-core/scripts:=
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-linaro-linux=
:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-l=
inux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/linaro/oe-rp=
b-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-con=
fig/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-workspace-testing=
/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-=
sysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-g=
libc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/sbin:=
/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-li=
nux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-rpb-workspace=
-testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-gli=
bc/hosttools&quot;;
 export HOME=3D&quot;/home/ryan&quot;; git -c core.fsyncobjectfiles=3D0 ls-=
remote <a href=3D"https://protect2.fireeye.com/url?k=3Db2a84fb4-eebc0c62-b2=
aa5518-0cc47aa8d93e-371995473aa70acc&amp;u=3Dhttps://git.fake.org/landing-t=
eams/working/qualcomm/wcnss-config.git" target=3D"_blank">
https://protect2.fireeye.com/url?k=3Dd34d8d14-8f59cec2-d34f97b8-0cc47aa8d93=
e-ece1a2e77b35a928&amp;u=3Dhttps://git.fake.org/landing-teams/working/qualc=
omm/wcnss-config.git</a>=C2=A0 failed with exit code 128, output:<u></u><u>=
</u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">fatal: unable to ac=
cess &#39;<a href=3D"https://protect2.fireeye.com/url?k=3D7c31f850-2025bb86=
-7c33e2fc-0cc47aa8d93e-913458af0bd88749&amp;u=3Dhttps://git.fake.org/landin=
g-teams/working/qualcomm/wcnss-config.git/" target=3D"_blank">https://prote=
ct2.fireeye.com/url?k=3Da72c0f65-fb384cb3-a72e15c9-0cc47aa8d93e-f7217430561=
61329&amp;u=3Dhttps://git.fake.org/landing-teams/working/qualcomm/wcnss-con=
fig.git/</a>&#39;:
 Could not resolve host: <a href=3D"https://protect2.fireeye.com/url?k=3D27=
88f5a7-7b9cb671-278aef0b-0cc47aa8d93e-4cf527ffc9088a66&amp;u=3Dhttp://git.f=
ake.org/" target=3D"_blank">
git.fake.org</a><u></u><u></u></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">A similar error hap=
pens if you use a tag rather than ${AUTOREV}:<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">$ sed -i ${WORKSPAC=
E}/layers/meta-qcom/recipes-bsp/wcnss-config/<a href=3D"https://protect2.fi=
reeye.com/url?k=3D5703404c-0b17039a-57015ae0-0cc47aa8d93e-ea4cd3a72e60d4d3&=
amp;u=3Dhttp://wcnss-config_1.13.bb/" target=3D"_blank">wcnss-config_1.13.b=
b</a>
 -e &#39;s#^SRCREV.*#SRCREV =3D &quot;debian/1.13&quot;#&#39;<u></u><u></u>=
</span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">$=C2=A0rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcns=
s-config*<u></u><u></u></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">$ bitbake -c do_fetch wcnss-config<u></u><u></u></sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">These are the messa=
ges I see:<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: wcnss-config=
-1.13-r0 do_fetch: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D=
1; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:path=3D/run/user/1000/bus&q=
uot;; export SSH_AGENT_PID=3D&quot;3371&quot;; export SSH_AUTH_SOCK=3D&quot=
;/run/user/1000/keyring/ssh&quot;;
 export PATH=3D&quot;/linaro/oe-rpb-workspace-testing/layers/openembedded-c=
ore/scripts:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/a=
ll-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-=
linaro-linux:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/=
all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-works=
pace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.1=
3-r0/recipe-sysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-r=
pb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-=
native/sbin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/a=
ll-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-r=
pb-workspace-testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb=
/tmp-rpb-glibc/hosttools&quot;;
 export HOME=3D&quot;/home/ryan&quot;; git -c core.fsyncobjectfiles=3D0 ls-=
remote <a href=3D"https://protect2.fireeye.com/url?k=3D004d9b16-5c59d8c0-00=
4f81ba-0cc47aa8d93e-e4766c8b68946d93&amp;u=3Dhttps://git.fake.org/landing-t=
eams/working/qualcomm/wcnss-config.git" target=3D"_blank">
https://protect2.fireeye.com/url?k=3D406f0776-1c7b44a0-406d1dda-0cc47aa8d93=
e-a34fc0276b9f7193&amp;u=3Dhttps://git.fake.org/landing-teams/working/qualc=
omm/wcnss-config.git</a>=C2=A0 failed with exit code 128, output:<u></u><u>=
</u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">fatal: unable to ac=
cess &#39;<a href=3D"https://protect2.fireeye.com/url?k=3Dfa696296-a67d2140=
-fa6b783a-0cc47aa8d93e-6c4d08c7ed4fa99b&amp;u=3Dhttps://git.fake.org/landin=
g-teams/working/qualcomm/wcnss-config.git/" target=3D"_blank">https://prote=
ct2.fireeye.com/url?k=3D74555bc8-2841181e-74574164-0cc47aa8d93e-52823b94e88=
0c977&amp;u=3Dhttps://git.fake.org/landing-teams/working/qualcomm/wcnss-con=
fig.git/</a>&#39;:
 Could not resolve host: <a href=3D"https://protect2.fireeye.com/url?k=3D24=
8f6c05-789b2fd3-248d76a9-0cc47aa8d93e-d031a7f235d50f3f&amp;u=3Dhttp://git.f=
ake.org/" target=3D"_blank">
git.fake.org</a><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: wcnss-config=
-1.13-r0 do_fetch:=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: wcnss-config=
-1.13-r0 do_fetch: Function failed: base_do_fetch<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: Logfile of f=
ailure stored in: /linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/=
work/all-linaro-linux/wcnss-config/1.13-r0/temp/log.do_fetch.5673<u></u><u>=
</u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: Task (/linar=
o/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/recipes-bs=
p/wcnss-config/wcnss-config_1.13.bb:do_fetch) failed with exit code &#39;1&=
#39;<u></u><u></u></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">SSH MIRRORS Problem=
<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">-------------------=
-------------------------<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">From a clean setup =
as above with the SRC_URI point to to git.fake.org...<u></u><u></u></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">$ sed -i ${WORKSPACE}/layers/meta-qcom/recipes-bsp/w=
cnss-config/<a href=3D"https://protect2.fireeye.com/url?k=3Da8182e0d-f40c6d=
db-a81a34a1-0cc47aa8d93e-d8a09f72a98e05f9&amp;u=3Dhttp://wcnss-config_1.13.=
bb/" target=3D"_blank">wcnss-config_1.13.bb</a>
 -e &#39;s#<a href=3D"https://protect2.fireeye.com/url?k=3D7e2710a0-2233537=
6-7e250a0c-0cc47aa8d93e-623f51f874ff8cb3&amp;u=3Dhttp://git.linaro.org/#git=
.fake.org%23g" target=3D"_blank">git.linaro.org#git.fake.org#g</a>&#39;<u><=
/u><u></u></span></p>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">$ cat &lt;&lt; EOF &gt;&gt; conf/local.conf<u></u><u=
></u></span></p>
</div>
</div>
</div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;background:white">MIRR=
ORS +=3D &quot; \\<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;background:white">=C2=
=A0git://<a href=3D"https://protect2.fireeye.com/url?k=3Dca16bb42-9602f894-=
ca14a1ee-0cc47aa8d93e-6b6b803d58afb693&amp;u=3Dhttp://git.fake.org/landing-=
teams/working/qualcomm/wcnss-config.git" target=3D"_blank">git.fake.org/lan=
ding-teams/working/qualcomm/wcnss-config.git</a>
 \\<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;background:white">=C2=
=A0ssh://<a href=3D"https://protect2.fireeye.com/url?k=3D5d6cc0b4-01788362-=
5d6eda18-0cc47aa8d93e-2acfbc51148e1d32&amp;u=3Dhttp://git@git.linaro.org/la=
nding-teams/working/qualcomm/wcnss-config.git;protocol=3Dssh" target=3D"_bl=
ank">git@git.linaro.org/landing-teams/working/qualcomm/wcnss-config.git;pro=
tocol=3Dssh</a>
 \n \\<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;background:white">&quo=
t;<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt;background:white">EOF<=
u></u><u></u></span></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">$=C2=A0rm -rf tmp-rpb-glibc/ ../downloads/git2/*wcns=
s-config*<u></u><u></u></span></p>
</div>
</div>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">$ bitbake -c do_fetch wcnss-config<u></u><u></u></sp=
an></p>
</div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white"><u></u>=C2=A0<u></u></span></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">These are the error=
s I see:<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">WARNING: wcnss-conf=
ig-1.13-r0 do_fetch: Failed to fetch URL git://<a href=3D"https://protect2.=
fireeye.com/url?k=3D8698c138-da8c82ee-869adb94-0cc47aa8d93e-28cf445e13336db=
0&amp;u=3Dhttp://git.fake.org/landing-teams/working/qualcomm/wcnss-config.g=
it;branch=3Dmaster;protocol=3Dhttps" target=3D"_blank">git.fake.org/landing=
-teams/working/qualcomm/wcnss-config.git;branch=3Dmaster;protocol=3Dhttps</=
a>,
 attempting MIRRORS if available<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: wcnss-config=
-1.13-r0 do_fetch: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D=
1; export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:path=3D/run/user/1000/bus&q=
uot;; export SSH_AGENT_PID=3D&quot;3371&quot;; export SSH_AUTH_SOCK=3D&quot=
;/run/user/1000/keyring/ssh&quot;;
 export PATH=3D&quot;/linaro/oe-rpb-workspace-testing/layers/openembedded-c=
ore/scripts:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/a=
ll-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/bin/allarch-=
linaro-linux:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/=
all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot/usr/bin/crossscripts:/=
linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-lin=
ux/wcnss-config/1.13-r0/recipe-sysroot-native/usr/sbin:/linaro/oe-rpb-works=
pace-testing/build-rpb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.1=
3-r0/recipe-sysroot-native/usr/bin:/linaro/oe-rpb-workspace-testing/build-r=
pb/tmp-rpb-glibc/work/all-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-=
native/sbin:/linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/work/a=
ll-linaro-linux/wcnss-config/1.13-r0/recipe-sysroot-native/bin:/linaro/oe-r=
pb-workspace-testing/bitbake/bin:/linaro/oe-rpb-workspace-testing/build-rpb=
/tmp-rpb-glibc/hosttools&quot;;
 export HOME=3D&quot;/home/ryan&quot;; LANG=3DC git -c core.fsyncobjectfile=
s=3D0 clone --bare --mirror
<a href=3D"https://protect2.fireeye.com/url?k=3De244c2d6-be508100-e246d87a-=
0cc47aa8d93e-7f952daaaf46cbb6&amp;u=3Dhttps://git.fake.org/landing-teams/wo=
rking/qualcomm/wcnss-config.git" target=3D"_blank">
https://protect2.fireeye.com/url?k=3Dfa4abe42-a65efd94-fa48a4ee-0cc47aa8d93=
e-b6b91bf272908847&amp;u=3Dhttps://git.fake.org/landing-teams/working/qualc=
omm/wcnss-config.git</a> /linaro/oe-rpb-workspace-testing/downloads/git2/gi=
t.fake.org.landing-teams.working.qualcomm.wcnss-config.git
 --progress failed with exit code 128, output:<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">Cloning into bare r=
epository &#39;/linaro/oe-rpb-workspace-testing/downloads/git2/git.fake.org=
.landing-teams.working.qualcomm.wcnss-config.git&#39;...<u></u><u></u></spa=
n></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">fatal: unable to ac=
cess &#39;<a href=3D"https://protect2.fireeye.com/url?k=3D3420972a-6834d4fc=
-34228d86-0cc47aa8d93e-14fedaf78b95862a&amp;u=3Dhttps://git.fake.org/landin=
g-teams/working/qualcomm/wcnss-config.git/" target=3D"_blank">https://prote=
ct2.fireeye.com/url?k=3Dd022c4f9-8c36872f-d020de55-0cc47aa8d93e-4b2e8b54b85=
a9a9a&amp;u=3Dhttps://git.fake.org/landing-teams/working/qualcomm/wcnss-con=
fig.git/</a>&#39;:
 Could not resolve host: <a href=3D"https://protect2.fireeye.com/url?k=3D4c=
2d844e-1039c798-4c2f9ee2-0cc47aa8d93e-c9433e6440d277b0&amp;u=3Dhttp://git.f=
ake.org/" target=3D"_blank">
git.fake.org</a><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: wcnss-config=
-1.13-r0 do_fetch: Fetcher failure for URL: &#39;git://<a href=3D"https://p=
rotect2.fireeye.com/url?k=3Df3655f0f-af711cd9-f36745a3-0cc47aa8d93e-89fc024=
ac7cad7d5&amp;u=3Dhttp://git.fake.org/landing-teams/working/qualcomm/wcnss-=
config.git;branch=3Dmaster;protocol=3Dhttps" target=3D"_blank">git.fake.org=
/landing-teams/working/qualcomm/wcnss-config.git;branch=3Dmaster;protocol=
=3Dhttps</a>&#39;.
 Unable to fetch URL from any source.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: wcnss-config=
-1.13-r0 do_fetch:=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: wcnss-config=
-1.13-r0 do_fetch: Function failed: base_do_fetch<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: Logfile of f=
ailure stored in: /linaro/oe-rpb-workspace-testing/build-rpb/tmp-rpb-glibc/=
work/all-linaro-linux/wcnss-config/1.13-r0/temp/log.do_fetch.7701<u></u><u>=
</u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">ERROR: Task (/linar=
o/oe-rpb-workspace-testing/build-rpb/conf/../../layers/meta-qcom/recipes-bs=
p/wcnss-config/wcnss-config_1.13.bb:do_fetch) failed with exit code &#39;1&=
#39;<u></u><u></u></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white">It looks like the M=
IRRORS variable hasn&#39;t replaced the repo at all.<u></u><u></u></span></=
p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"background:white"><u></u>=C2=A0<u></u=
></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">Regards,<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12pt;background:white">Ryan.<u></u><u></u></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<hr>
<font face=3D"Verdana" color=3D"Gray" size=3D"1"><br>
Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email
 by mistake, please notify us immediately by replying to this message and t=
hen destroy it and do not review, disclose, copy or distribute it. Thank yo=
u in advance for your cooperation.<br>
</font>
</div>

</blockquote></div></div>

--000000000000ae8f3b05826459fd--
