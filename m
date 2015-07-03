Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A5B6E009D7; Fri,  3 Jul 2015 04:54:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vn0-f41.google.com (mail-vn0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB7F5E009A7
	for <yocto@yoctoproject.org>; Fri,  3 Jul 2015 04:54:49 -0700 (PDT)
Received: by vnbg7 with SMTP id g7so15560157vnb.12
	for <yocto@yoctoproject.org>; Fri, 03 Jul 2015 04:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=LK3X0bHhvJvzru7rYMDS1pUmet7E48/78cWGU4HsFWM=;
	b=rw/dn5bY5zOBBhiAXAkFbGlA7NNoaQIGqFMZE2hH/Z7e1fJ+pUqDg0G3/TSHGV1tkz
	SlOG+bSc5+JEv0Kpnlhjfv3pQ3fqKKo2U3cZodHZQ8oGoDCXgZ5ufS/2OytAe6ENsqnP
	Bf+5q4KQ2Js+lw2YjI12tFvPs8TtaVJI7XPiPwuUUA+rEPI3mtvtLMUG3KgCG9Sxr+wT
	7oMGfAHecAYxFKMS43d+jlmMRkSPi6LnrbZuyu+kg1DVJ4E0tqcOd/EMfZEQ5s/gZoht
	ydQK1FHKwrXFiaasW2gSnwbS58Azu4WM4cLoQT6pK+15YIIshow4u+M1jmVexjx7QbI5
	ACTA==
MIME-Version: 1.0
X-Received: by 10.52.142.49 with SMTP id rt17mr36245890vdb.50.1435924488938;
	Fri, 03 Jul 2015 04:54:48 -0700 (PDT)
Received: by 10.31.212.199 with HTTP; Fri, 3 Jul 2015 04:54:48 -0700 (PDT)
Date: Fri, 3 Jul 2015 13:54:48 +0200
Message-ID: <CABc_YGAQqOMTMavBTQ+gjq1grteY_n9fy_2xSqVgfCc9ijf3=w@mail.gmail.com>
From: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
To: yocto@yoctoproject.org
Subject: Multiple conncetion to svn (svn+ssh)
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
X-List-Received-Date: Fri, 03 Jul 2015 11:54:57 -0000
Content-Type: multipart/alternative; boundary=bcaec51b9b631668240519f7398a

--bcaec51b9b631668240519f7398a
Content-Type: text/plain; charset=UTF-8

Hello again,

I have 12 recipes that download code from same svn repository (using
svn+ssh)protocol.
Recipes are grouped in packagegroup.
When I want to bitbake packagegroup fetcher fail, but when I run recipe
alone all is ok.
I think it is because I want to open 8 connection to one svn repository.How
can I fix this, for example by allowing only eg. 2 recipes from
packagegroup to be executed in paralell.

| DEBUG: Python function base_do_fetch finished
| DEBUG: Python function do_fetch finished
| ERROR: Function failed: Fetcher failure: Fetch command failed with exit
code 1, output:
| svn: E210002: Unable to connect to a repository at URL 'svn+ssh://SVN_TAG'
| svn: E210002: To better debug SSH connection problems, remove the -q
option from 'ssh' in the [tunnels] section of your Subversion configuration
file.
| svn: E210002: Network connection closed unexpectedl


My Yocto version is 1.7.2

Regards,
Marcin

--bcaec51b9b631668240519f7398a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello again,<div><br></div><div>I have 12 recipes that dow=
nload code from same svn repository (using svn+ssh)protocol.</div><div>Reci=
pes are grouped in packagegroup.</div><div>When I want to bitbake packagegr=
oup fetcher fail, but when I run recipe alone all is ok.</div><div>I think =
it is because I want to open 8 connection to one svn repository.How can I f=
ix this, for example by allowing only eg. 2 recipes from packagegroup to be=
 executed in paralell.</div><div><br></div><div><div>| DEBUG: Python functi=
on base_do_fetch finished</div><div>| DEBUG: Python function do_fetch finis=
hed</div><div>| ERROR: Function failed: Fetcher failure: Fetch command fail=
ed with exit code 1, output:</div><div>| svn: E210002: Unable to connect to=
 a repository at URL &#39;svn+ssh://SVN_TAG&#39;</div><div>| svn: E210002: =
To better debug SSH connection problems, remove the -q option from &#39;ssh=
&#39; in the [tunnels] section of your Subversion configuration file.</div>=
<div>| svn: E210002: Network connection closed unexpectedl</div></div><div>=
<br></div><div><br></div><div>My Yocto version is 1.7.2</div><div><br></div=
><div>Regards,</div><div>Marcin</div><div><br></div></div>

--bcaec51b9b631668240519f7398a--
