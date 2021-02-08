Subject: Re: devtool question/issue
To: yocto@lists.yoctoproject.org
From: "David Gartner" <gartnerd@gmail.com>
X-Originating-Location: Macklin, Saskatchewan, CA (71.17.204.173)
X-Originating-Platform: Mac Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 07 Feb 2021 16:01:35 -0800
References: <31249.1612659478103525956@lists.yoctoproject.org>
In-Reply-To: <31249.1612659478103525956@lists.yoctoproject.org>
Message-ID: <31241.1612742495128137731@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6fDW4wz0L0KL0OM82vMn"

--6fDW4wz0L0KL0OM82vMn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I found the issue that was causing my problem. Just an FYI if anyone else h=
appens to run into this.

There was a file named ".devtoolbase" in /mnt/YB. I think this was a remen=
ant of some previous work I was doing with yocto. I'm not sure what the pur=
pose of this file is but once I removed it devtool no longer errorred out.

--6fDW4wz0L0KL0OM82vMn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I found the issue that was causing my problem. Just an FYI if anyone else h=
appens to run into this.<br /><br />There was a file named ".devtoolbase" i=
n /mnt/YB. I think this was a remenant of some previous work I was doing wi=
th yocto. I'm not sure what the purpose of this file is but once I removed =
it devtool no longer errorred out.

--6fDW4wz0L0KL0OM82vMn--
