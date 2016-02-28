Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC33DE00CA5; Sat, 27 Feb 2016 19:50:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ED9EE00C60
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 19:50:19 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.125])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1aZsMU-0003Hv-La; Sun, 28 Feb 2016 03:49:39 +0000
To: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
References: <dfb75dd53c8799e92ee5c0aff534c4798dd02a9a.1454594277.git.adrian.ratiu@ni.com>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <56D26E83.1030502@twobit.us>
Date: Sat, 27 Feb 2016 19:50:27 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <dfb75dd53c8799e92ee5c0aff534c4798dd02a9a.1454594277.git.adrian.ratiu@ni.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux 1/2] audit: create audit-go package
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
X-List-Received-Date: Sun, 28 Feb 2016 03:50:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hello,

This looks straight forward enough. I'm not seeing any QA warnings
though so it looks like the go bindings are only built when the go
compiler is available. Can you point me at the layer you're using to get
the go stuff? There seems to be more than one: meta-golang, oe-meta-go?

Thanks,
Philip

On 02/04/2016 06:14 AM, Ioan-Adrian Ratiu wrote:
> This version of audit installs go bindings which are not shipped and
> trigger QA warnings. Put them in their own package just like python.
> 
> Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
> ---
>  recipes-security/audit/audit_2.4.4.bb | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/recipes-security/audit/audit_2.4.4.bb b/recipes-security/audit/audit_2.4.4.bb
> index 55a5b12..f512cbc 100644
> --- a/recipes-security/audit/audit_2.4.4.bb
> +++ b/recipes-security/audit/audit_2.4.4.bb
> @@ -55,7 +55,7 @@ like relay events to remote machines or analyze events for suspicious \
>  behavior."
>  
>  PACKAGES =+ "audispd-plugins"
> -PACKAGES += "auditd ${PN}-python"
> +PACKAGES += "auditd ${PN}-python ${PN}-go"
>  
>  FILES_${PN} = "${sysconfdir}/libaudit.conf ${base_libdir}/libaudit.so.1* ${base_libdir}/libauparse.so.*"
>  FILES_auditd += "${bindir}/* ${base_sbindir}/* ${sysconfdir}/*"
> @@ -65,6 +65,7 @@ FILES_audispd-plugins += "${sysconfdir}/audisp/audisp-remote.conf \
>  	"
>  FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
>  FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
> +FILES_${PN}-go = "${libdir}/golang"
>  FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la ${base_libdir}/pkgconfig/*"
>  
>  CONFFILES_auditd += "${sysconfdir}/audit/audit.rules"
> 


