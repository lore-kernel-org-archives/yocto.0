Return-Path: <rajanpatha34@gmail.com>
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDAE6E007C6
	for <yocto@yoctoproject.org>; Sat,  7 Dec 2013 02:43:58 -0800 (PST)
Received: by mail-pd0-f175.google.com with SMTP id w10so2401316pde.34
	for <yocto@yoctoproject.org>; Sat, 07 Dec 2013 02:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KJVcIOARCydb/umgDL+mWHfsB0bWDctB8/W7dSuKAEU=;
	b=BLm7QxTNMVFgUnTlCoGZZup5NNZ1TBb2OIF4jlcrbIDRscWYWQZUMf4EdU+HIYoqV9
	apn0MUMleZLO42qfsVDdHRJWGwXBDbWT5aXIuxWsVqpsQHKK9fd+nUKMYCBXBNpWsCDP
	k292ZRK2mqQV3TGLDYbFhzWZzuVaO7FW8F+dMdDh0Amh16lBafNuxz32hRd5C9UMtP+F
	GADLhXIhKRnUXndZQUpY2f5hWfJQNv192EnOLCx5XoFNyTxunE6J4n0lWF9XzyPsfvuv
	rXBlC66rcVsS7NccimwrL9U2kkz6jwKF0oxgCovIYzGSRQe+nSy76Cm/fHggSVzQlSlv
	cRtA==
MIME-Version: 1.0
X-Received: by 10.68.242.163 with SMTP id wr3mr9602509pbc.84.1386413038081;
	Sat, 07 Dec 2013 02:43:58 -0800 (PST)
Received: by 10.68.146.106 with HTTP; Sat, 7 Dec 2013 02:43:58 -0800 (PST)
Date: Sat, 7 Dec 2013 16:13:58 +0530
Message-ID: <CACXtFMgc9KG=qRr=_KwtAftPw7F9Ob14cHnFTni7CAwjTUooeA@mail.gmail.com>
From: rajan pathak <rajanpatha34@gmail.com>
To: yocto@yoctoproject.org
Subject: How to Customize do_fetch to extract two files from tarball
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
X-List-Received-Date: Sat, 07 Dec 2013 10:44:01 -0000
Content-Type: multipart/alternative; boundary=047d7b339d41a59a4904ecef70ec

--047d7b339d41a59a4904ecef70ec
Content-Type: text/plain; charset=ISO-8859-1

I wanted to extract couple of files from tarball which is located SVN
repo,This is a huge
repo and it takes almost hour to get fetched .

I don't want to waste that much of time only to get two files from that
tarball repo

I have got with me python code that will do svn cat but not sure how to put
it in my recipe file.

import tarfilefrom subprocess import Popen, PIPE# Capture the tar file
from subversion
p = Popen(["svn", "cat", "svn+ssh://url/some.tar"], stdout=PIPE)
tmp='/home/me/tempfile.tar'
open(tmp, 'wb').write(p.stdout.read())# Extract the file we want,
saving to current directory
tarfile.open(tmp).extract('dir1/fname.ext', path='dir2'

Can any body point me out how to merger this code in recipe file.

Thanks

Rajan

--047d7b339d41a59a4904ecef70ec
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I wanted to extract couple of files from ta=
rball which is located SVN repo,This is a huge<br></div>repo and it takes a=
lmost hour to get fetched .<br><br></div>I don&#39;t want to waste that muc=
h of time only to get two files from that tarball repo<br>
<br></div>I have got with me python code that will do svn cat but not sure =
how to put it in my recipe file.<br><br><pre style class=3D""><code><span c=
lass=3D"">import</span><span class=3D""> tarfile
</span><span class=3D"">from</span><span class=3D""> subprocess </span><spa=
n class=3D"">import</span><span class=3D""> </span><span class=3D"">Popen</=
span><span class=3D"">,</span><span class=3D""> PIPE
</span><span class=3D""># Capture the tar file from subversion</span><span =
class=3D"">
p </span><span class=3D"">=3D</span><span class=3D""> </span><span class=3D=
"">Popen</span><span class=3D"">([</span><span class=3D"">&quot;svn&quot;</=
span><span class=3D"">,</span><span class=3D""> </span><span class=3D"">&qu=
ot;cat&quot;</span><span class=3D"">,</span><span class=3D""> </span><span =
class=3D"">&quot;svn+ssh://url/some.tar&quot;</span><span class=3D"">],</sp=
an><span class=3D""> stdout</span><span class=3D"">=3D</span><span class=3D=
"">PIPE</span><span class=3D"">)</span><span class=3D"">
tmp</span><span class=3D"">=3D</span><span class=3D"">&#39;/home/me/tempfil=
e.tar&#39;</span><span class=3D"">
open</span><span class=3D"">(</span><span class=3D"">tmp</span><span class=
=3D"">,</span><span class=3D""> </span><span class=3D"">&#39;wb&#39;</span>=
<span class=3D"">).</span><span class=3D"">write</span><span class=3D"">(</=
span><span class=3D"">p</span><span class=3D"">.</span><span class=3D"">std=
out</span><span class=3D"">.</span><span class=3D"">read</span><span class=
=3D"">())</span><span class=3D"">
</span><span class=3D""># Extract the file we want, saving to current direc=
tory</span><span class=3D"">
tarfile</span><span class=3D"">.</span><span class=3D"">open</span><span cl=
ass=3D"">(</span><span class=3D"">tmp</span><span class=3D"">).</span><span=
 class=3D"">extract</span><span class=3D"">(</span><span class=3D"">&#39;di=
r1/fname.ext&#39;</span><span class=3D"">,</span><span class=3D""> path</sp=
an><span class=3D"">=3D</span><span class=3D"">&#39;dir2&#39;</span><span c=
lass=3D""><br>
<br></span></code></pre><pre style class=3D""><code><span class=3D"">Can an=
y body point me out how to merger this code in recipe file.<br><br></span><=
/code></pre><pre style class=3D""><code><span class=3D"">Thanks <br></span>=
</code></pre>
<pre style class=3D""><code><span class=3D"">Rajan <br></span></code></pre>=
<br></div>

--047d7b339d41a59a4904ecef70ec--
