Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E4FBE01735
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 08:07:50 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 63988F81207; Tue, 29 Oct 2013 09:07:50 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9FB7DF81206;
	Tue, 29 Oct 2013 09:07:48 -0600 (MDT)
Message-ID: <526FCF51.1000701@mlbassoc.com>
Date: Tue, 29 Oct 2013 09:08:01 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Can't build any images
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
X-List-Received-Date: Tue, 29 Oct 2013 15:07:53 -0000
X-Groupsio-MsgNum: 16775
Content-Type: multipart/mixed; boundary="------------040909030608050700010804"

--------------040909030608050700010804
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Since this commit:
   commit 8b42409dca729b7abbbdac04f533e161de86a3ef
   Author: Paul Eggleton <paul.eggleton@linux.intel.com>
   Date:   Fri Oct 18 15:19:58 2013 +0100

     scripts/oe-pkgdata-util: improve help text and command line parsing

     * Use optparse to parse command line
     * Make help text actually helpful by describing what each command does
     * Drop comment at the top listing the commands which is now superfluous

     (From OE-Core rev: feb317513fff638ad7abdba8ab34b8413f0ab055)

     Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

I get these errors for any image I try to create:
   | Traceback (most recent call last):
   |   File "/local/poky-cutting-edge/scripts/oe-pkgdata-util", line 334, in <module>
   |     main()
   |   File "/local/poky-cutting-edge/scripts/oe-pkgdata-util", line 319, in main
   |     glob(args[1:], parser.print_help)
   |   File "/local/poky-cutting-edge/scripts/oe-pkgdata-util", line 143, in glob
   |     if debug:
   | NameError: global name 'debug' is not defined

The attached patch fixes the problem, but I'm not sure if it is 100% correct.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------040909030608050700010804
Content-Type: text/x-patch;
 name="oe.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="oe.patch"

diff --git a/scripts/oe-pkgdata-util b/scripts/oe-pkgdata-util
index 80cacc5..14e81aa 100755
--- a/scripts/oe-pkgdata-util
+++ b/scripts/oe-pkgdata-util
@@ -283,8 +283,10 @@ def find_path(args, usage):
                                 if fnmatch.fnmatchcase(fullpth, targetpath):
                                     print("%s: %s" % (fn, fullpth))
 
+debug = False
 
 def main():
+    global debug
     parser = optparse.OptionParser(
         usage = '''%prog [options] <command> <arguments>
 

--------------040909030608050700010804--
