Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C386E0084A; Sun, 30 Nov 2014 13:21:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FA02E00830
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 13:21:39 -0800 (PST)
Received: by mail-pa0-f49.google.com with SMTP id eu11so9690645pac.22
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 13:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=P2QKNc2oAO69GmXf6gDNyv/KFfzRqAd04KfhyXzVlSg=;
	b=Z1oGc1dyDyzpnm5hyT/cW5VXmvBtLeg48GjKU3FcEg98GqsGPT8h2F2SKcdmU+fbPo
	1SCcs8M15TbK6R/VdJ+JQnR8QpnTML6K5kXqeH0T/MQTocik0Yzu17f2fY3i6DMV4Vay
	rC9DDZNaT9AIuZZ3C0Gy5xngEvLx8jypV/oYjTo8PsuJ3Mf4THT4XDOSZip1OaFnFv2z
	DPBqK8Ri6nWjDj5N6JlxZl3HpdynoKw0WvZQSypX8pMSH13xzbRnte2m7zdcNUbw57Zp
	aMOPUfN+lYutU1+S6G6dEX6rvegeXH7Y5W0OXxvDoSOdudSQuGO/kZHnldTtEtJoPGxo
	xUAg==
X-Received: by 10.70.100.199 with SMTP id fa7mr94554789pdb.114.1417382498961; 
	Sun, 30 Nov 2014 13:21:38 -0800 (PST)
Received: from ?IPv6:2601:c:9380:601:6175:482f:87f2:5c37?
	([2601:c:9380:601:6175:482f:87f2:5c37])
	by mx.google.com with ESMTPSA id
	oq6sm15675967pdb.45.2014.11.30.13.21.36 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 30 Nov 2014 13:21:37 -0800 (PST)
Message-ID: <547B8A5F.6060706@gmail.com>
Date: Sun, 30 Nov 2014 13:21:35 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Joe MacDonald <Joe_MacDonald@mentor.com>
References: <1417114150-12085-1-git-send-email-joe_macdonald@mentor.com>	<547AA25B.4020506@gmail.com>
	<20141130194524.GO3886@mentor.com>
In-Reply-To: <20141130194524.GO3886@mentor.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] libcap-ng: port CVE-2014-3215 patch
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
X-List-Received-Date: Sun, 30 Nov 2014 21:21:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 11/30/2014 11:45 AM, Joe MacDonald wrote:
> [Re: [yocto] [meta-security][PATCH] libcap-ng: port CVE-2014-3215 patch] On 14.11.29 (Sat 20:51) akuster808 wrote:
>
>> Joe,
>>
>> I went a head and updated to 7.4 which included the security fix.
>> Thanks for the reminder.
>
> Yeah, that's on my to-do list for meta-selinux, too.  That's the right
> course of action on this one.  :-)

To be honest, this package should be in one in core or meta-openembedded.

- Armin
> -J.
>
>>
>> - Armin
>>
>> On 11/27/2014 10:49 AM, Joe MacDonald wrote:
>>> Importing the patch from meta-selinux, which itself was a backport from
>>> the upstream source tree.
>>>
>>> Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>>> ---
>>>
>>> I mentioned a while back that I had at least one patch in meta-selinux that may
>>> apply to meta-security as well.  I don't know if you guys are interested in this
>>> or not since the primary tool to demonstrate the exploit is seunshare, but it is
>>> a problem in libcap-ng itself and it is exploitable outside of the selinux
>>> framework.
>>>
>>> -J.
>>>
>>>   .../libcap-ng/libcap-ng/CVE-2014-3215.patch        | 91 ++++++++++++++++++++++
>>>   recipes-security/libcap-ng/libcap-ng_0.7.3.bb      |  4 +-
>>>   2 files changed, 94 insertions(+), 1 deletion(-)
>>>   create mode 100644 recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
>>>
>>> diff --git a/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch b/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
>>> new file mode 100644
>>> index 0000000..e9164d4
>>> --- /dev/null
>>> +++ b/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
>>> @@ -0,0 +1,91 @@
>>> +libcap-ng: local privilege escalation due to capng_lock
>>> +
>>> +Following the discussion here:
>>> +
>>> +   http://openwall.com/lists/oss-security/2014/04/29/7
>>> +
>>> +This is known to impact SELinux tools, however the issue could be exploited by
>>> +any application using the relevant functions in libcap-ng provided it is suid
>>> +root.
>>> +
>>> +Upstream-Status: Backport
>>> +
>>> +Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>>> +
>>> +diff --git a/docs/capng_lock.3 b/docs/capng_lock.3
>>> +index 7683119..a070c1e 100644
>>> +--- a/docs/capng_lock.3
>>> ++++ b/docs/capng_lock.3
>>> +@@ -8,12 +8,13 @@ int capng_lock(void);
>>> +
>>> + .SH "DESCRIPTION"
>>> +
>>> +-capng_lock will take steps to prevent children of the current process to regain full privileges if the uid is 0. This should be called while possessing the CAP_SETPCAP capability in the kernel. This function will do the following if permitted by the kernel: Set the NOROOT option on for PR_SET_SECUREBITS, set the NOROOT_LOCKED option to on for PR_SET_SECUREBITS, set the PR_NO_SETUID_FIXUP option on for PR_SET_SECUREBITS, and set the PR_NO_SETUID_FIXUP_LOCKED option on for PR_SET_SECUREBITS.
>>> ++capng_lock will take steps to prevent children of the current process from gaining privileges by executing setuid programs.  This should be called while possessing the CAP_SETPCAP capability in the kernel.
>>> +
>>> ++This function will do the following if permitted by the kernel:  If the kernel supports PR_SET_NO_NEW_PRIVS, it will use it.  Otherwise it will set the NOROOT option on for PR_SET_SECUREBITS, set the NOROOT_LOCKED option to on for PR_SET_SECUREBITS, set the PR_NO_SETUID_FIXUP option on for PR_SET_SECUREBITS, and set the PR_NO_SETUID_FIXUP_LOCKED option on for PR_SET_SECUREBITS.  If both fail, it will return an error.
>>> +
>>> + .SH "RETURN VALUE"
>>> +
>>> +-This returns 0 on success and a negative number on failure. -1 means a failure setting any of the PR_SET_SECUREBITS options.
>>> ++This returns 0 on success and a negative number on failure. -1 means a failure to use PR_SET_NO_NEW_PRIVS and a failure setting any of the PR_SET_SECUREBITS options.
>>> +
>>> + .SH "SEE ALSO"
>>> +
>>> +diff --git a/src/cap-ng.c b/src/cap-ng.c
>>> +index bd105ba..422f2bc 100644
>>> +--- a/src/cap-ng.c
>>> ++++ b/src/cap-ng.c
>>> +@@ -45,6 +45,7 @@
>>> +  * 2.6.24 kernel	XATTR_NAME_CAPS
>>> +  * 2.6.25 kernel	PR_CAPBSET_DROP, CAPABILITY_VERSION_2
>>> +  * 2.6.26 kernel	PR_SET_SECUREBITS, SECURE_*_LOCKED, VERSION_3
>>> ++ * 3.5    kernel	PR_SET_NO_NEW_PRIVS
>>> +  */
>>> +
>>> + /* External syscall prototypes */
>>> +@@ -122,6 +123,14 @@ extern int capget(cap_user_header_t header, const cap_user_data_t data);
>>> + #define SECURE_NO_SETUID_FIXUP_LOCKED   3  /* make bit-2 immutable */
>>> + #endif
>>> +
>>> ++/* prctl values that we use */
>>> ++#ifndef PR_SET_SECUREBITS
>>> ++#define PR_SET_SECUREBITS		28
>>> ++#endif
>>> ++#ifndef PR_SET_NO_NEW_PRIVS
>>> ++#define PR_SET_NO_NEW_PRIVS		38
>>> ++#endif
>>> ++
>>> + // States: new, allocated, initted, updated, applied
>>> + typedef enum { CAPNG_NEW, CAPNG_ERROR, CAPNG_ALLOCATED, CAPNG_INIT,
>>> + 	CAPNG_UPDATED, CAPNG_APPLIED } capng_states_t;
>>> +@@ -663,15 +672,22 @@ int capng_change_id(int uid, int gid, capng_flags_t flag)
>>> +
>>> + int capng_lock(void)
>>> + {
>>> +-#ifdef PR_SET_SECUREBITS
>>> +-	int rc = prctl(PR_SET_SECUREBITS,
>>> +-			1 << SECURE_NOROOT |
>>> +-			1 << SECURE_NOROOT_LOCKED |
>>> +-			1 << SECURE_NO_SETUID_FIXUP |
>>> +-			1 << SECURE_NO_SETUID_FIXUP_LOCKED, 0, 0, 0);
>>> ++	int rc;
>>> ++
>>> ++	// On Linux 3.5 and up, we can directly prevent ourselves and
>>> ++	// our descendents from gaining privileges.
>>> ++	if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0) == 0)
>>> ++		return 0;
>>> ++
>>> ++	// This kernel is too old or otherwise doesn't support
>>> ++	// PR_SET_NO_NEW_PRIVS.  Fall back to using securebits.
>>> ++	rc = prctl(PR_SET_SECUREBITS,
>>> ++		   1 << SECURE_NOROOT |
>>> ++		   1 << SECURE_NOROOT_LOCKED |
>>> ++		   1 << SECURE_NO_SETUID_FIXUP |
>>> ++		   1 << SECURE_NO_SETUID_FIXUP_LOCKED, 0, 0, 0);
>>> + 	if (rc)
>>> + 		return -1;
>>> +-#endif
>>> +
>>> + 	return 0;
>>> + }
>>> diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
>>> index 3f225ba..1acf554 100644
>>> --- a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
>>> +++ b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
>>> @@ -8,7 +8,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
>>>   		    file://COPYING.LIB;md5=e3eda01d9815f8d24aae2dbd89b68b06"
>>>
>>>   SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}.tar.gz \
>>> -	   file://python.patch"
>>> +	   file://python.patch \
>>> +	   file://CVE-2014-3215.patch \
>>> +	   "
>>>
>>>   inherit lib_package autotools pythonnative
>>>
>>>
>
>
>

