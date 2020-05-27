Subject: about when poky check sstate_cache #yocto
To: yocto@lists.yoctoproject.org
From: zhangyifan46@huawei.com
X-Originating-Location: HK (116.66.184.199)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 26 May 2020 23:25:17 -0700
Message-ID: <9vjw.1590560717400915270.OUAd@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BC7jVvWskNjwz7CyYg1w"

--BC7jVvWskNjwz7CyYg1w
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I read the codes about sstate_cache. Let me briefly talk about how it work =
. I am not sure if it is right.
Example,we have setscene tasks A_setsscene, B_setcene.
and Task C ,D are not setscene task.
After we bitbake something, runqueue started,and it check A , B to see if =
the sstate_caache exists and if exist, the poky does unpacking the cache an=
d then ,ordinary build process starts and it will skip A and B.
So checking the existence and validation of sstate_cache is before ordinar=
y build process instead of right before execcuting A and B(for example, we =
have a dependency tree, A,depend on X ,checking is before X instead of betw=
een X and A)
that's the result of my reading codes. And i did a small experienment that=
, in the middle of a clean bitbake project, i copied=C2=A0 all sstae_caches=
 to the sstate_cache directory and it seemed the bitbake skips no task and =
unpacking did not happen.

Finally, i have a question. Can we move the checking and unpacking to, lik=
e the example above, right before executing A ,between X and A.
it means a lot to me. Cause the sharing of sstate_cache may be helpful to =
a more efficent parallel make(instead of just parallel make gcc jobs)

--BC7jVvWskNjwz7CyYg1w
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I read the codes about sstate_cache. Let me briefly talk about how it work =
. I am not sure if it is right.<br />Example,we have setscene tasks A_setss=
cene, B_setcene.<br />and Task C ,D are not setscene task.<br />After we bi=
tbake something, runqueue started,and it check A , B to see if the sstate_c=
aache exists and if exist, the poky does unpacking the cache and then ,ordi=
nary build process starts and it will skip A and B.<br />So checking the ex=
istence and validation of sstate_cache is before ordinary build process ins=
tead of right before execcuting A and B(for example, we have a dependency t=
ree, A,depend on X ,checking is before X instead of between X and A)<br />t=
hat's the result of my reading codes. And i did a small experienment that, =
in the middle of a clean bitbake project, i copied&nbsp; all sstae_caches t=
o the sstate_cache directory and it seemed the bitbake skips no task and un=
packing did not happen.<br /><br />Finally, i have a question. Can we move =
the checking and unpacking to, like the example above, right before executi=
ng A ,between X and A.<br />it means a lot to me. Cause the sharing of ssta=
te_cache may be helpful to a more efficent parallel make(instead of just pa=
rallel make gcc jobs)

--BC7jVvWskNjwz7CyYg1w--
