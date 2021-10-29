#pragma once

#include <functional>

namespace lve {

// from: https://stackoverflow.com/a/57595105
template <typename T>
void hashCombine(std::size_t& seed, const T& v) {
  seed ^= std::hash<T>{}(v) + 0x9e3779b9 + (seed << 6) + (seed >> 2);
}

}  // namespace lve  // namespace lve
