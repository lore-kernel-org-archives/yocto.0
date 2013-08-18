Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E45C2E013DA
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 13:44:21 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VB9pi-000834-C8
	for yocto@yoctoproject.org; Sun, 18 Aug 2013 22:44:18 +0200
Received: from 213.249.12.85 ([213.249.12.85])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 22:44:18 +0200
Received: from gmane by 213.249.12.85 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 22:44:18 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sun, 18 Aug 2013 23:44:05 +0300
Message-ID: <52113215.5090102@reliableembeddedsystems.com>
References: <ku083q$oa8$1@ger.gmane.org>
	<CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
	<5203B0D7.809@mlbassoc.com>
	<5203B4AC.2030609@reliableembeddedsystems.com>
	<5203B7F9.20001@mlbassoc.com>
	<5203D594.8090400@reliableembeddedsystems.com>
	<5203DAD9.9080101@mlbassoc.com>
	<52040611.8020106@reliableembeddedsystems.com>
	<52041846.8010201@mlbassoc.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213.249.12.85
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <52041846.8010201@mlbassoc.com>
Cc: public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: can not build yocto on NFS mounted NAS
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
X-List-Received-Date: Sun, 18 Aug 2013 20:44:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

Just for the record I was able to remove the hard link with a small
patch and now things look good (so far) - although it will consume more
disk space.

diff --git a/meta/lib/oe/path.py b/meta/lib/oe/path.py
index faa0f61..3225993 100644
--- a/meta/lib/oe/path.py
+++ b/meta/lib/oe/path.py
@@ -90,7 +90,7 @@ def copyhardlinktree(src, dst):
         if not len(os.listdir(src)):
             return
         src = src + "/*"
-    cmd = 'cp -al %s %s' % (src, dst)
+    cmd = 'cp -a %s %s' % (src, dst)
     check_output(cmd, shell=True, stderr=subprocess.STDOUT)

 def remove(path, recurse=True):

Regards,

Robert
..."But I have a slowly coagulating theory that the size of a project is
directly proportional to the possibility that significant bugs will crop
up. Exponentiate for each additional programmer involved." - Steven K.
Halliburton

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



