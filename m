Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B8FAE00828; Thu,  1 Dec 2016 12:05:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B55E00529
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 12:05:55 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id j92so3207625ioi.0
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 12:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:mime-version:content-disposition
	:user-agent; bh=7+impi3knBOjiYEy2lJqUwGSLVug4LnY3m+XUknqq9M=;
	b=XDUqORa5RS9V9obP7nxdJlMMOKgEeqqCtXXGFYxJuGPS/9CspRXXVJwyLVuMy+eOIN
	MIdNAWAUXK100hmBriPw6hz5GMf+BA1IBpXPbV2WarE+SEofGvJtKoFkM5B3xSupQo6k
	kGVj+/WpfKaDqlaDOb/1wJGgxcTfxrIomQoLQlUg11jCA46eCek2fFbjvAp5vDvG4M6e
	eJhMkusGJ8zp0A4DhqFssFSifqrcodLnP8w3Lw4POPTY8zZ2vA9kKvUEvAz4fIyWzY16
	ml6gbq/Bwgell0rm3KZKFcj5PzwC4EwpIPneU1uDHrb6h8/oSFvejFTABezdQpdv0jVg
	Arsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=7+impi3knBOjiYEy2lJqUwGSLVug4LnY3m+XUknqq9M=;
	b=RfyRnyPDu+sqtPTt+snF30/vl6chhpK1CI4zvIm1wefx8QWvIcqmgwBJfq0y4Es8ef
	q29zefgpS1N8BavM2S5iaRZoB9bnJWuovuHZOKqx+XEjsmUyG0h3z31KKpwvteMaqoVU
	twdeWY1shGn8smWYc2pQEVG7tryeFzBC/BIezdd7CCDFbKMUmf7zaCt7gFE4D+XlcuLS
	BVVTseVWWlSwyWyiTJjrT7EjqUpCNrtETyquNc2eRMBoFAdmcM+BT35DD2IqS7adW1Fe
	dkNq2U4NXISzPtsluwHOUemsD07iXsb1jMZXft2YaLYerOu+iJeFCPzN34O8uxThcxwc
	O5yA==
X-Gm-Message-State: AKaTC02Q/K72cG+iSY52RzcPd9m+fEj3baKuC3MmZV/M532Ly/SvABN2XWyiw8DAZfFKiA==
X-Received: by 10.107.57.135 with SMTP id g129mr32412925ioa.178.1480622754675; 
	Thu, 01 Dec 2016 12:05:54 -0800 (PST)
Received: from openSUSE-i7.site ([108.161.122.190])
	by smtp.gmail.com with ESMTPSA id 78sm774885itm.19.2016.12.01.12.05.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Dec 2016 12:05:54 -0800 (PST)
Date: Thu, 1 Dec 2016 15:05:50 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20161201200550.GA31925@openSUSE-i7.site>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: yocto-kernel-tools and multiple users
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
X-List-Received-Date: Thu, 01 Dec 2016 20:05:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

I believe a recent change in the yocto-kernel-tools is causing some funny
issue I saw this morning on my overnight jenkins builds.

	commit 08463d684c1952e74c25344cddace4c3f24c739d
	Date:   Mon Oct 31 14:30:12 2016 -0400

	    scc: exit on error
	    
	    If there is an error in the processing of the input files, scc
	    should exit and inform the user.
	    
	    scc is executed on a combined/preprocessed file and as a result
	    it doesn't have the granularity to see each input file individually.
	    
	    Rather than moving preprocessing into scc (from spp), we can trap
	    the line number of the error and dump context around the line. This
	    gives the user a pointer to the input file and the specific line
	    that caused the problem.
	    
	    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

	diff --git a/tools/scc b/tools/scc
	index b6ab747..0294103 100755
	--- a/tools/scc
	+++ b/tools/scc
	@@ -238,18 +238,37 @@ process_file()
		 done
	 
		 unset PATH
	-        if [ -n "${verbose}" ]; then
	-            eval . $in $outfile_append
	-        else
	-            # hide stderr if we aren't verbose
	-            eval . $in $outfile_append 2> /dev/null
	-        fi
	+        (
	+            set -e
	+            eval . $in $outfile_append > /tmp/scc-output 2>&1
	+        )
	+    )
	 
	-        if [ $? -ne 0 ]; then
	-            echo "[ERROR]: processing of file $in failed"
	-            exit 1
	+    if [ $? -ne 0 ]; then
	+        echo "[ERROR]: processing of file $in failed"
	+        cat /tmp/scc-output
	+
	+        # look for common errors so we can point to the right input file
	+
	+        # 1) /tmp/tmp.gfN6WsbDHN: line 403: cat: No such file or directory
	+        #     "grep -oh" will only output what matches, which gets us "line 404: .."
	+        #     cut gets us the second field, which is the line number
	+        line=$(cat /tmp/scc-output | grep -oh "line.*:" | cut -f2 -d' ' | sed 's/://g')
	+        if [ -n "$line" ]; then
	+            let start_line=$line-20
	+            let end_line=$line+10
	+            if [ $start_line -lt 0 ]; then
	+                start_line=0
	+            fi
	+            echo ""
	+            echo "Context around the error is:"
	+            echo ""
	+            sed -n -e "$start_line,$end_line p" -e "$end_line q" $in | sed 's/^/    /'
	+            echo ""
	+            echo "See pre-processed file $in for more details"
		 fi
	-    )
	+        exit 1
	+    fi
	 
	     return 0
	 }

In order to catch errors, scc's output is being hardcoded to /tmp/scc-output.
But on my box there are two users who perform builds: jenkins and myself. When
the second person comes along to do a build it finds inadequate permissions on
/tmp/scc-output.

Is anyone else seeing this?

